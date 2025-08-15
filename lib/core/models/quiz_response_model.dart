// ignore_for_file: invalid_annotation_target

import 'package:flashquiz_app/core/gen/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_response_model.freezed.dart';
part 'quiz_response_model.g.dart';

@freezed
class QuizResponseModel with _$QuizResponseModel {
  const QuizResponseModel._();
  const factory QuizResponseModel({
    String? username,
    QuestionType? type,
    DifficultyLevel? difficulty,
    String? category,
    String? question,
    @JsonKey(name: 'correct_answer') String? correctAnswer,
    @JsonKey(name: 'incorrect_answers') List<String>? incorrectAnswers,
  }) = _QuizResponseModel;

  factory QuizResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuizResponseModelFromJson(json);
}
