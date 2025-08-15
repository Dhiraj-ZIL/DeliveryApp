// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizHistoryModelImpl _$$QuizHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizHistoryModelImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      authProvider: json['authProvider'] as String,
      timestamp: json['timestamp'] as String,
      resultMessage: json['resultMessage'] as String,
      percentage: (json['percentage'] as num).toDouble(),
      total: (json['total'] as num).toInt(),
      userId: json['userId'] as String,
      correct: (json['correct'] as num).toInt(),
      difficulty: json['difficulty'] as String,
      email: json['email'] as String?,
      displayName: json['displayName'] as String?,
      photoURL: json['photoURL'] as String?,
    );

Map<String, dynamic> _$$QuizHistoryModelImplToJson(
        _$QuizHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'authProvider': instance.authProvider,
      'timestamp': instance.timestamp,
      'resultMessage': instance.resultMessage,
      'percentage': instance.percentage,
      'total': instance.total,
      'userId': instance.userId,
      'correct': instance.correct,
      'difficulty': instance.difficulty,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoURL': instance.photoURL,
    };
