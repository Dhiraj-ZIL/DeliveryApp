// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git_repository_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitRepositoryModelImpl _$$GitRepositoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GitRepositoryModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      viewerHasStarred: json['viewerHasStarred'] as bool?,
      description: json['description'] as String?,
      stargazersCount: (json['stargazersCount'] as num?)?.toInt(),
      forksCount: (json['forksCount'] as num?)?.toInt(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$GitRepositoryModelImplToJson(
        _$GitRepositoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'viewerHasStarred': instance.viewerHasStarred,
      'description': instance.description,
      'stargazersCount': instance.stargazersCount,
      'forksCount': instance.forksCount,
      'updatedAt': instance.updatedAt,
    };
