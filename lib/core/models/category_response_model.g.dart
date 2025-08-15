// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryResponseModelImpl _$$CategoryResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      playedLevels: (json['playedLevels'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DifficultyLevelEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$CategoryResponseModelImplToJson(
        _$CategoryResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'playedLevels': instance.playedLevels
          ?.map((e) => _$DifficultyLevelEnumMap[e]!)
          .toList(),
    };

const _$DifficultyLevelEnumMap = {
  DifficultyLevel.easy: 'easy',
  DifficultyLevel.medium: 'medium',
  DifficultyLevel.hard: 'hard',
};
