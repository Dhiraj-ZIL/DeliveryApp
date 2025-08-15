// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResponseModelImpl _$$QuizResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizResponseModelImpl(
      username: json['username'] as String?,
      type: $enumDecodeNullable(_$QuestionTypeEnumMap, json['type']),
      difficulty:
          $enumDecodeNullable(_$DifficultyLevelEnumMap, json['difficulty']),
      category: json['category'] as String?,
      question: json['question'] as String?,
      correctAnswer: json['correct_answer'] as String?,
      incorrectAnswers: (json['incorrect_answers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$QuizResponseModelImplToJson(
        _$QuizResponseModelImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'type': _$QuestionTypeEnumMap[instance.type],
      'difficulty': _$DifficultyLevelEnumMap[instance.difficulty],
      'category': instance.category,
      'question': instance.question,
      'correct_answer': instance.correctAnswer,
      'incorrect_answers': instance.incorrectAnswers,
    };

const _$QuestionTypeEnumMap = {
  QuestionType.multiple: 'multiple',
  QuestionType.boolean: 'boolean',
};

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.medium: 'medium',
  DifficultyLevel.hard: 'hard',
};
