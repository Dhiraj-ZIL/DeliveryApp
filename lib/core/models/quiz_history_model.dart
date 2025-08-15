import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_history_model.freezed.dart';
part 'quiz_history_model.g.dart';

@freezed
class QuizHistoryModel with _$QuizHistoryModel {
  const QuizHistoryModel._();
  const factory QuizHistoryModel({
    required String id,
    required String category,
    required String authProvider,
    required String timestamp,
    required String resultMessage,
    required double percentage,
    required int total,
    required String userId,
    required int correct,
    required String difficulty,
    String? email,
    String? displayName,
    String? photoURL,
  }) = _QuizHistoryModel;

  factory QuizHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$QuizHistoryModelFromJson(json);
}
