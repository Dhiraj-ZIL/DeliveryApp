import 'dart:isolate';

class QuizResultIsolateData {
  final int correct;
  final int total;
  final double percentage;
  final String resultMessage;
  final String? category;
  final String? difficulty;
  final SendPort sendPort;

  QuizResultIsolateData({
    required this.correct,
    required this.total,
    required this.percentage,
    required this.resultMessage,
    this.category,
    this.difficulty,
    required this.sendPort,
  });
}

// Response structure from the isolate
class QuizResultProcessed {
  final Map<String, dynamic> resultData;
  final int correct;
  final int total;

  QuizResultProcessed({
    required this.resultData,
    required this.correct,
    required this.total,
  });
}
