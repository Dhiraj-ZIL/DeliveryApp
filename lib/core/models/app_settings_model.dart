import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_settings_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 1)
class AppSettingsModel {
  @HiveField(0)
  final int amountOfQuestion;
  @HiveField(1)
  final String defaultTheme;
  @HiveField(2)
  final int? quizTimeLimitSecond;
  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);

  AppSettingsModel(
    this.amountOfQuestion,
    this.defaultTheme,
    this.quizTimeLimitSecond,
  );

  Map<String, dynamic> get toJson => _$AppSettingsModelToJson(this);
}
