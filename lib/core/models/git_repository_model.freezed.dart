// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'git_repository_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitRepositoryModel _$GitRepositoryModelFromJson(Map<String, dynamic> json) {
  return _GitRepositoryModel.fromJson(json);
}

/// @nodoc
mixin _$GitRepositoryModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get viewerHasStarred => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get stargazersCount => throw _privateConstructorUsedError;
  int? get forksCount => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GitRepositoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitRepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitRepositoryModelCopyWith<GitRepositoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitRepositoryModelCopyWith<$Res> {
  factory $GitRepositoryModelCopyWith(
          GitRepositoryModel value, $Res Function(GitRepositoryModel) then) =
      _$GitRepositoryModelCopyWithImpl<$Res, GitRepositoryModel>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      bool? viewerHasStarred,
      String? description,
      int? stargazersCount,
      int? forksCount,
      String? updatedAt});
}

/// @nodoc
class _$GitRepositoryModelCopyWithImpl<$Res, $Val extends GitRepositoryModel>
    implements $GitRepositoryModelCopyWith<$Res> {
  _$GitRepositoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitRepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? viewerHasStarred = freezed,
    Object? description = freezed,
    Object? stargazersCount = freezed,
    Object? forksCount = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      viewerHasStarred: freezed == viewerHasStarred
          ? _value.viewerHasStarred
          : viewerHasStarred // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitRepositoryModelImplCopyWith<$Res>
    implements $GitRepositoryModelCopyWith<$Res> {
  factory _$$GitRepositoryModelImplCopyWith(_$GitRepositoryModelImpl value,
          $Res Function(_$GitRepositoryModelImpl) then) =
      __$$GitRepositoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      bool? viewerHasStarred,
      String? description,
      int? stargazersCount,
      int? forksCount,
      String? updatedAt});
}

/// @nodoc
class __$$GitRepositoryModelImplCopyWithImpl<$Res>
    extends _$GitRepositoryModelCopyWithImpl<$Res, _$GitRepositoryModelImpl>
    implements _$$GitRepositoryModelImplCopyWith<$Res> {
  __$$GitRepositoryModelImplCopyWithImpl(_$GitRepositoryModelImpl _value,
      $Res Function(_$GitRepositoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitRepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? viewerHasStarred = freezed,
    Object? description = freezed,
    Object? stargazersCount = freezed,
    Object? forksCount = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$GitRepositoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      viewerHasStarred: freezed == viewerHasStarred
          ? _value.viewerHasStarred
          : viewerHasStarred // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: freezed == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int?,
      forksCount: freezed == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitRepositoryModelImpl implements _GitRepositoryModel {
  const _$GitRepositoryModelImpl(
      {required this.id,
      required this.name,
      required this.viewerHasStarred,
      this.description,
      this.stargazersCount,
      this.forksCount,
      this.updatedAt});

  factory _$GitRepositoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitRepositoryModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? viewerHasStarred;
  @override
  final String? description;
  @override
  final int? stargazersCount;
  @override
  final int? forksCount;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'GitRepositoryModel(id: $id, name: $name, viewerHasStarred: $viewerHasStarred, description: $description, stargazersCount: $stargazersCount, forksCount: $forksCount, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitRepositoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.viewerHasStarred, viewerHasStarred) ||
                other.viewerHasStarred == viewerHasStarred) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, viewerHasStarred,
      description, stargazersCount, forksCount, updatedAt);

  /// Create a copy of GitRepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitRepositoryModelImplCopyWith<_$GitRepositoryModelImpl> get copyWith =>
      __$$GitRepositoryModelImplCopyWithImpl<_$GitRepositoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitRepositoryModelImplToJson(
      this,
    );
  }
}

abstract class _GitRepositoryModel implements GitRepositoryModel {
  const factory _GitRepositoryModel(
      {required final String? id,
      required final String? name,
      required final bool? viewerHasStarred,
      final String? description,
      final int? stargazersCount,
      final int? forksCount,
      final String? updatedAt}) = _$GitRepositoryModelImpl;

  factory _GitRepositoryModel.fromJson(Map<String, dynamic> json) =
      _$GitRepositoryModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  bool? get viewerHasStarred;
  @override
  String? get description;
  @override
  int? get stargazersCount;
  @override
  int? get forksCount;
  @override
  String? get updatedAt;

  /// Create a copy of GitRepositoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitRepositoryModelImplCopyWith<_$GitRepositoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
