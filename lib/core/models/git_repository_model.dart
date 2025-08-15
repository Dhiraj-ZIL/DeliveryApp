import 'package:freezed_annotation/freezed_annotation.dart';

part 'git_repository_model.freezed.dart';
part 'git_repository_model.g.dart';

@freezed
class GitRepositoryModel with _$GitRepositoryModel {
  const factory GitRepositoryModel({
    required String? id,
    required String? name,
    required bool? viewerHasStarred,
    String? description,
    int? stargazersCount,
    int? forksCount,
    String? updatedAt,
  }) = _GitRepositoryModel;

  factory GitRepositoryModel.fromJson(Map<String, dynamic> json) =>
      _$GitRepositoryModelFromJson(json);

  factory GitRepositoryModel.fromGraphQL(Map<String, dynamic> json) {
    return GitRepositoryModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      viewerHasStarred: json['viewerHasStarred'] as bool?,
      description: json['shortDescriptionHTML'] as String?,
      stargazersCount: json['stargazers']?['totalCount'] as int?,
      forksCount: json['forks']?['totalCount'] as int?,
      updatedAt: json['updatedAt'] as String?,
    );
  }
}
