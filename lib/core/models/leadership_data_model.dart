import 'package:flashquiz_app/core/extensions/date_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leadership_data_model.freezed.dart';
part 'leadership_data_model.g.dart';

@freezed
class LeadershipDataModel with _$LeadershipDataModel {
  const LeadershipDataModel._();

  const factory LeadershipDataModel({
    required String userId,
    @TimestampConverter() DateTime? createdAt,
    required int totalQuizzes,
    required int totalQuestions,
    required int correctAnswers,
    @TimestampConverter() DateTime? lastQuizDate,
  }) = _LeadershipDataModel;

  factory LeadershipDataModel.fromJson(Map<String, dynamic> json) =>
      _$LeadershipDataModelFromJson(json);

  // Helper to calculate success rate percentage
  double get successRate {
    if (totalQuestions == 0) return 0.0;
    return (correctAnswers / totalQuestions) * 100;
  }
}
