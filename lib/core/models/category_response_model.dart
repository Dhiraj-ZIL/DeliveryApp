import 'package:flashquiz_app/core/gen/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_response_model.freezed.dart';
part 'category_response_model.g.dart';

@freezed
class CategoryResponseModel with _$CategoryResponseModel {
  const CategoryResponseModel._();
  factory CategoryResponseModel({
    int? id,
    String? name,
    List<DifficultyLevel>? playedLevels,
  }) = _CategoryResponseModel;

  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseModelFromJson(json);
}
