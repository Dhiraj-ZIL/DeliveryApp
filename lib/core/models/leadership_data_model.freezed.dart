// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leadership_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadershipDataModel _$LeadershipDataModelFromJson(Map<String, dynamic> json) {
  return _LeadershipDataModel.fromJson(json);
}

/// @nodoc
mixin _$LeadershipDataModel {
  String get userId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int get totalQuizzes => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  int get correctAnswers => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get lastQuizDate => throw _privateConstructorUsedError;

  /// Serializes this LeadershipDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeadershipDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadershipDataModelCopyWith<LeadershipDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadershipDataModelCopyWith<$Res> {
  factory $LeadershipDataModelCopyWith(
          LeadershipDataModel value, $Res Function(LeadershipDataModel) then) =
      _$LeadershipDataModelCopyWithImpl<$Res, LeadershipDataModel>;
  @useResult
  $Res call(
      {String userId,
      @TimestampConverter() DateTime? createdAt,
      int totalQuizzes,
      int totalQuestions,
      int correctAnswers,
      @TimestampConverter() DateTime? lastQuizDate});
}

/// @nodoc
class _$LeadershipDataModelCopyWithImpl<$Res, $Val extends LeadershipDataModel>
    implements $LeadershipDataModelCopyWith<$Res> {
  _$LeadershipDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadershipDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = freezed,
    Object? totalQuizzes = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? lastQuizDate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQuizzes: null == totalQuizzes
          ? _value.totalQuizzes
          : totalQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      lastQuizDate: freezed == lastQuizDate
          ? _value.lastQuizDate
          : lastQuizDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadershipDataModelImplCopyWith<$Res>
    implements $LeadershipDataModelCopyWith<$Res> {
  factory _$$LeadershipDataModelImplCopyWith(_$LeadershipDataModelImpl value,
          $Res Function(_$LeadershipDataModelImpl) then) =
      __$$LeadershipDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      @TimestampConverter() DateTime? createdAt,
      int totalQuizzes,
      int totalQuestions,
      int correctAnswers,
      @TimestampConverter() DateTime? lastQuizDate});
}

/// @nodoc
class __$$LeadershipDataModelImplCopyWithImpl<$Res>
    extends _$LeadershipDataModelCopyWithImpl<$Res, _$LeadershipDataModelImpl>
    implements _$$LeadershipDataModelImplCopyWith<$Res> {
  __$$LeadershipDataModelImplCopyWithImpl(_$LeadershipDataModelImpl _value,
      $Res Function(_$LeadershipDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadershipDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = freezed,
    Object? totalQuizzes = null,
    Object? totalQuestions = null,
    Object? correctAnswers = null,
    Object? lastQuizDate = freezed,
  }) {
    return _then(_$LeadershipDataModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQuizzes: null == totalQuizzes
          ? _value.totalQuizzes
          : totalQuizzes // ignore: cast_nullable_to_non_nullable
              as int,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      lastQuizDate: freezed == lastQuizDate
          ? _value.lastQuizDate
          : lastQuizDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadershipDataModelImpl extends _LeadershipDataModel {
  const _$LeadershipDataModelImpl(
      {required this.userId,
      @TimestampConverter() this.createdAt,
      required this.totalQuizzes,
      required this.totalQuestions,
      required this.correctAnswers,
      @TimestampConverter() this.lastQuizDate})
      : super._();

  factory _$LeadershipDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadershipDataModelImplFromJson(json);

  @override
  final String userId;
  @override
  @TimestampConverter()
  final DateTime? createdAt;
  @override
  final int totalQuizzes;
  @override
  final int totalQuestions;
  @override
  final int correctAnswers;
  @override
  @TimestampConverter()
  final DateTime? lastQuizDate;

  @override
  String toString() {
    return 'LeadershipDataModel(userId: $userId, createdAt: $createdAt, totalQuizzes: $totalQuizzes, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, lastQuizDate: $lastQuizDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadershipDataModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.totalQuizzes, totalQuizzes) ||
                other.totalQuizzes == totalQuizzes) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.lastQuizDate, lastQuizDate) ||
                other.lastQuizDate == lastQuizDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, createdAt, totalQuizzes,
      totalQuestions, correctAnswers, lastQuizDate);

  /// Create a copy of LeadershipDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadershipDataModelImplCopyWith<_$LeadershipDataModelImpl> get copyWith =>
      __$$LeadershipDataModelImplCopyWithImpl<_$LeadershipDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadershipDataModelImplToJson(
      this,
    );
  }
}

abstract class _LeadershipDataModel extends LeadershipDataModel {
  const factory _LeadershipDataModel(
          {required final String userId,
          @TimestampConverter() final DateTime? createdAt,
          required final int totalQuizzes,
          required final int totalQuestions,
          required final int correctAnswers,
          @TimestampConverter() final DateTime? lastQuizDate}) =
      _$LeadershipDataModelImpl;
  const _LeadershipDataModel._() : super._();

  factory _LeadershipDataModel.fromJson(Map<String, dynamic> json) =
      _$LeadershipDataModelImpl.fromJson;

  @override
  String get userId;
  @override
  @TimestampConverter()
  DateTime? get createdAt;
  @override
  int get totalQuizzes;
  @override
  int get totalQuestions;
  @override
  int get correctAnswers;
  @override
  @TimestampConverter()
  DateTime? get lastQuizDate;

  /// Create a copy of LeadershipDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadershipDataModelImplCopyWith<_$LeadershipDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
