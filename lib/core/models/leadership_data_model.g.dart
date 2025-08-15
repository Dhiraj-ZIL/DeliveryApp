// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leadership_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadershipDataModelImpl _$$LeadershipDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LeadershipDataModelImpl(
      userId: json['userId'] as String,
      createdAt: const TimestampConverter().fromJson(json['createdAt']),
      totalQuizzes: (json['totalQuizzes'] as num).toInt(),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctAnswers: (json['correctAnswers'] as num).toInt(),
      lastQuizDate: const TimestampConverter().fromJson(json['lastQuizDate']),
    );

Map<String, dynamic> _$$LeadershipDataModelImplToJson(
        _$LeadershipDataModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'totalQuizzes': instance.totalQuizzes,
      'totalQuestions': instance.totalQuestions,
      'correctAnswers': instance.correctAnswers,
      'lastQuizDate': const TimestampConverter().toJson(instance.lastQuizDate),
    };
