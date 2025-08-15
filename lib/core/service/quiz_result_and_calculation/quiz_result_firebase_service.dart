import 'dart:async';
import 'dart:isolate';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flashquiz_app/core/service/quiz_result_and_calculation/quiz_result_isolate.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuizResultFirebaseService {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;

  QuizResultFirebaseService(this._firestore, this._auth);

  // Process quiz data in an isolate
  static Future<QuizResultProcessed> _processQuizResultInIsolate(
      QuizResultIsolateData data) async {
    final resultData = {
      'correct': data.correct,
      'total': data.total,
      'percentage': data.percentage,
      'resultMessage': data.resultMessage,
      'category': data.category ?? 'General',
      'difficulty': data.difficulty ?? 'Not Specified',
      // We don't add server timestamp and user data here as they'll be added in the main isolate
    };

    final processedResult = QuizResultProcessed(
      resultData: resultData,
      correct: data.correct,
      total: data.total,
    );

    data.sendPort.send(processedResult);
    return processedResult;
  }

  // Isolate entry point
  static void _isolateEntryPoint(dynamic message) {
    final QuizResultIsolateData data = message;
    _processQuizResultInIsolate(data);
  }

  Future<void> saveQuizResult({
    required int correct,
    required int total,
    required double percentage,
    required String resultMessage,
    String? category,
    String? difficulty,
  }) async {
    final user = _auth.currentUser;

    if (user == null) {
      throw Exception('User not authenticated');
    }

    // Process data in an isolate
    final processedResult = await _runInIsolate(
      correct: correct,
      total: total,
      percentage: percentage,
      resultMessage: resultMessage,
      category: category,
      difficulty: difficulty,
    );

    // Add user-specific data that couldn't be processed in the isolate
    final quizResult = {
      ...processedResult.resultData,
      'userId': user.uid,
      'displayName': user.displayName ?? 'Anonymous User',
      'email': user.email,
      'photoURL': user.photoURL,
      'authProvider': user.providerData.isNotEmpty
          ? user.providerData.first.providerId
          : 'anonymous',
      'timestamp': FieldValue.serverTimestamp(),
    };

    // Add the quiz result to the user's history collection
    await _firestore
        .collection('users')
        .doc(user.uid)
        .collection('quizResults')
        .add(quizResult);

    // Update user stats in the user document
    await _updateUserStats(
        user.uid, processedResult.correct, processedResult.total);
  }

  Future<QuizResultProcessed> _runInIsolate({
    required int correct,
    required int total,
    required double percentage,
    required String resultMessage,
    String? category,
    String? difficulty,
  }) async {
    final receivePort = ReceivePort();

    final isolateData = QuizResultIsolateData(
      correct: correct,
      total: total,
      percentage: percentage,
      resultMessage: resultMessage,
      category: category,
      difficulty: difficulty,
      sendPort: receivePort.sendPort,
    );

    await Isolate.spawn(_isolateEntryPoint, isolateData);

    // Wait for the isolate to complete processing and receive the result
    final completer = Completer<QuizResultProcessed>();

    receivePort.listen((message) {
      if (message is QuizResultProcessed) {
        completer.complete(message);
        receivePort.close();
      }
    });

    return completer.future;
  }

  Future<void> _updateUserStats(String userId, int correct, int total) async {
    final userRef = _firestore.collection('users').doc(userId);

    // Get current user document or create if it doesn't exist
    final userDoc = await userRef.get();

    if (userDoc.exists) {
      // Update existing stats
      await userRef.update({
        'totalQuizzes': FieldValue.increment(1),
        'totalQuestions': FieldValue.increment(total),
        'correctAnswers': FieldValue.increment(correct),
        'lastQuizDate': FieldValue.serverTimestamp(),
      });
    } else {
      // Create new user stats document
      await userRef.set({
        'userId': userId,
        'displayName': Random().nextInt(1000).toString(),
        'createdAt': FieldValue.serverTimestamp(),
        'totalQuizzes': 1,
        'totalQuestions': total,
        'correctAnswers': correct,
        'lastQuizDate': FieldValue.serverTimestamp(),
      });
    }
  }

  // Process stats data in an isolate
  static Future<Map<String, dynamic>> _processStatsInIsolate(
      List<Map<String, dynamic>> usersData) async {
    // Here we can perform complex calculations on the user data
    // For example, aggregating statistics, finding trends, etc.

    int totalUsers = usersData.length;
    int totalQuizzes = 0;
    int totalQuestions = 0;
    int totalCorrectAnswers = 0;

    for (var user in usersData) {
      totalQuizzes += (user['totalQuizzes'] as int?) ?? 0;
      totalQuestions += (user['totalQuestions'] as int?) ?? 0;
      totalCorrectAnswers += (user['correctAnswers'] as int?) ?? 0;
    }

    return {
      'totalUsers': totalUsers,
      'totalQuizzes': totalQuizzes,
      'totalQuestions': totalQuestions,
      'totalCorrectAnswers': totalCorrectAnswers,
      'globalAverageScore': totalQuestions > 0
          ? (totalCorrectAnswers / totalQuestions) * 100
          : 0.0,
    };
  }

  // Isolate entry point for processing all user stats
  static void _statsIsolateEntryPoint(Map<String, dynamic> message) {
    final List<Map<String, dynamic>> usersData = message['usersData'];
    final SendPort sendPort = message['sendPort'] as SendPort;

    _processStatsInIsolate(usersData).then((result) {
      sendPort.send(result);
    });
  }

  Future<List<Map<String, dynamic>>> getAllUserStats() async {
    final querySnapshot = await _firestore.collection('users').get();
    final users = querySnapshot.docs.map((doc) => doc.data()).toList();

    // We can also process the stats in an isolate if needed
    if (users.length > 100) {
      // Only use isolate for large data sets
      return _processAllUserStatsInIsolate(users);
    }

    return users;
  }

  Future<List<Map<String, dynamic>>> _processAllUserStatsInIsolate(
      List<Map<String, dynamic>> users) async {
    final receivePort = ReceivePort();

    await Isolate.spawn(_statsIsolateEntryPoint, {
      'usersData': users,
      'sendPort': receivePort.sendPort,
    });

    // This is just an example of how to process the result from an isolate
    // In this case, we're actually just returning the original list
    final completer = Completer<List<Map<String, dynamic>>>();

    receivePort.listen((message) {
      // Here message would be the processed stats from the isolate
      // For now, we're just returning the original users list
      completer.complete(users);
      receivePort.close();
    });

    return completer.future;
  }

  Future<Map<String, dynamic>> getUserStats() async {
    final user = _auth.currentUser;

    if (user == null) {
      throw Exception('User not authenticated');
    }

    final userDoc = await _firestore.collection('users').doc(user.uid).get();

    if (!userDoc.exists) {
      return {
        'totalQuizzes': 0,
        'totalQuestions': 0,
        'correctAnswers': 0,
        'averageScore': 0.0,
      };
    }

    final data = userDoc.data()!;
    return await _processUserStatsInIsolate(data);
  }

  Future<Map<String, dynamic>> _processUserStatsInIsolate(
      Map<String, dynamic> userData) async {
    final receivePort = ReceivePort();

    await Isolate.spawn((message) {
      final data = message['userData'];
      final sendPort = message['sendPort'] as SendPort;

      final userData = data as Map<String, dynamic>;
      final totalQuestions = userData['totalQuestions'] as int? ?? 0;
      final correctAnswers = userData['correctAnswers'] as int? ?? 0;

      final result = {
        'totalQuizzes': userData['totalQuizzes'] as int? ?? 0,
        'totalQuestions': totalQuestions,
        'correctAnswers': correctAnswers,
        'averageScore':
            totalQuestions > 0 ? (correctAnswers / totalQuestions) * 100 : 0.0,
        // Additional computed stats can be added here
      };

      sendPort.send(result);
    }, {
      'userData': userData,
      'sendPort': receivePort.sendPort,
    });

    final completer = Completer<Map<String, dynamic>>();

    receivePort.listen((message) {
      completer.complete(message);
      receivePort.close();
    });

    return completer.future;
  }

  Future<List<Map<String, dynamic>>> getQuizHistory({int limit = 10}) async {
    final user = _auth.currentUser;

    if (user == null) {
      throw Exception('User not authenticated');
    }

    final querySnapshot = await _firestore
        .collection('users')
        .doc(user.uid)
        .collection('quizResults')
        .orderBy('timestamp', descending: true)
        .limit(limit)
        .get();

    final results = querySnapshot.docs
        .map((doc) => {
              'id': doc.id,
              ...doc.data(),
              'timestamp': (doc.data()['timestamp'] as Timestamp?)
                      ?.toDate()
                      .toString() ??
                  DateTime.now().toString(),
            })
        .toList();

    return _processQuizHistoryInIsolate(results);
  }

  Future<List<Map<String, dynamic>>> _processQuizHistoryInIsolate(
      List<Map<String, dynamic>> results) async {
    // If the result set is small, we can skip the isolate
    if (results.length < 5) {
      return results;
    }

    final receivePort = ReceivePort();

    await Isolate.spawn((message) {
      final List<Map<String, dynamic>> historyData =
          message['historyData'] as List<Map<String, dynamic>>;
      final SendPort sendPort = message['sendPort'] as SendPort;

      // Here we can do additional processing on the history data
      // For example, calculate trends, find patterns, etc.

      // For now, we're just passing the data through
      sendPort.send(historyData);
    }, {
      'historyData': results,
      'sendPort': receivePort.sendPort,
    });

    final completer = Completer<List<Map<String, dynamic>>>();

    receivePort.listen((message) {
      completer.complete(message);
      receivePort.close();
    });

    return completer.future;
  }
}

// class QuizResultFirebaseService {
//   final FirebaseFirestore _firestore;
//   final FirebaseAuth _auth;

//   QuizResultFirebaseService(this._firestore, this._auth);

//   Future<void> saveQuizResult({
//     required int correct,
//     required int total,
//     required double percentage,
//     required String resultMessage,
//     String? category,
//     String? difficulty,
//   }) async {
//     final user = _auth.currentUser;

//     if (user == null) {
//       throw Exception('User not authenticated');
//     }

//     final quizResult = {
//       'userId': user.uid,
//       'displayName': user.displayName ?? 'Anonymous User',
//       'email': user.email,
//       'photoURL': user.photoURL,
//       'authProvider': user.providerData.isNotEmpty
//           ? user.providerData.first.providerId
//           : 'anonymous',
//       'correct': correct,
//       'total': total,
//       'percentage': percentage,
//       'resultMessage': resultMessage,
//       'category': category ?? 'General',
//       'difficulty': difficulty ?? 'Not Specified',
//       'timestamp': FieldValue.serverTimestamp(),
//     };

//     // Add the quiz result to the user's history collection
//     await _firestore
//         .collection('users')
//         .doc(user.uid)
//         .collection('quizResults')
//         .add(quizResult);

//     // Update user stats in the user document
//     await _updateUserStats(user.uid, correct, total);
//   }

//   Future<void> _updateUserStats(String userId, int correct, int total) async {
//     final userRef = _firestore.collection('users').doc(userId);

//     // Get current user document or create if it doesn't exist
//     final userDoc = await userRef.get();

//     if (userDoc.exists) {
//       // Update existing stats
//       await userRef.update({
//         'totalQuizzes': FieldValue.increment(1),
//         'totalQuestions': FieldValue.increment(total),
//         'correctAnswers': FieldValue.increment(correct),
//         'lastQuizDate': FieldValue.serverTimestamp(),
//       });
//     } else {
//       // Create new user stats document
//       await userRef.set({
//         'userId': userId,
//         'displayName': Random().nextInt(1000).toString(),
//         'createdAt': FieldValue.serverTimestamp(),
//         'totalQuizzes': 1,
//         'totalQuestions': total,
//         'correctAnswers': correct,
//         'lastQuizDate': FieldValue.serverTimestamp(),
//       });
//     }
//   }

//   Future<List<Map<String, dynamic>>> getAllUserStats() async {
//     final querySnapshot = await _firestore.collection('users').get();

//     final users = querySnapshot.docs.map((doc) => doc.data()).toList();
//     return users;
//   }

//   Future<Map<String, dynamic>> getUserStats() async {
//     final user = _auth.currentUser;

//     if (user == null) {
//       throw Exception('User not authenticated');
//     }

//     final userDoc = await _firestore.collection('users').doc(user.uid).get();

//     if (!userDoc.exists) {
//       return {
//         'totalQuizzes': 0,
//         'totalQuestions': 0,
//         'correctAnswers': 0,
//         'averageScore': 0.0,
//       };
//     }

//     final data = userDoc.data()!;
//     final totalQuestions = data['totalQuestions'] as int? ?? 0;
//     final correctAnswers = data['correctAnswers'] as int? ?? 0;

//     return {
//       'totalQuizzes': data['totalQuizzes'] as int? ?? 0,
//       'totalQuestions': totalQuestions,
//       'correctAnswers': correctAnswers,
//       'averageScore':
//           totalQuestions > 0 ? (correctAnswers / totalQuestions) * 100 : 0.0,
//     };
//   }

//   Future<List<Map<String, dynamic>>> getQuizHistory({int limit = 10}) async {
//     final user = _auth.currentUser;

//     if (user == null) {
//       throw Exception('User not authenticated');
//     }

//     final querySnapshot = await _firestore
//         .collection('users')
//         .doc(user.uid)
//         .collection('quizResults')
//         .orderBy('timestamp', descending: true)
//         .limit(limit)
//         .get();

//     return querySnapshot.docs
//         .map((doc) => {
//               'id': doc.id,
//               ...doc.data(),
//               'timestamp': (doc.data()['timestamp'] as Timestamp?)
//                       ?.toDate()
//                       .toString() ??
//                   DateTime.now().toString(),
//             })
//         .toList();
//   }
// }
