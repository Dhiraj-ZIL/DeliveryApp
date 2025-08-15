// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizResponseModel _$QuizResponseModelFromJson(Map<String, dynamic> json) {
  return _QuizResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuizResponseModel {
  String? get username => throw _privateConstructorUsedError;
  QuestionType? get type => throw _privateConstructorUsedError;
  DifficultyLevel? get difficulty => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'incorrect_answers')
  List<String>? get incorrectAnswers => throw _privateConstructorUsedError;

  /// Serializes this QuizResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuizResponseModelCopyWith<QuizResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResponseModelCopyWith<$Res> {
  factory $QuizResponseModelCopyWith(
          QuizResponseModel value, $Res Function(QuizResponseModel) then) =
      _$QuizResponseModelCopyWithImpl<$Res, QuizResponseModel>;
  @useResult
  $Res call(
      {String? username,
      QuestionType? type,
      DifficultyLevel? difficulty,
      String? category,
      String? question,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      @JsonKey(name: 'incorrect_answers') List<String>? incorrectAnswers});
}

/// @nodoc
class _$QuizResponseModelCopyWithImpl<$Res, $Val extends QuizResponseModel>
    implements $QuizResponseModelCopyWith<$Res> {
  _$QuizResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? type = freezed,
    Object? difficulty = freezed,
    Object? category = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswers = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      incorrectAnswers: freezed == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResponseModelImplCopyWith<$Res>
    implements $QuizResponseModelCopyWith<$Res> {
  factory _$$QuizResponseModelImplCopyWith(_$QuizResponseModelImpl value,
          $Res Function(_$QuizResponseModelImpl) then) =
      __$$QuizResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username,
      QuestionType? type,
      DifficultyLevel? difficulty,
      String? category,
      String? question,
      @JsonKey(name: 'correct_answer') String? correctAnswer,
      @JsonKey(name: 'incorrect_answers') List<String>? incorrectAnswers});
}

/// @nodoc
class __$$QuizResponseModelImplCopyWithImpl<$Res>
    extends _$QuizResponseModelCopyWithImpl<$Res, _$QuizResponseModelImpl>
    implements _$$QuizResponseModelImplCopyWith<$Res> {
  __$$QuizResponseModelImplCopyWithImpl(_$QuizResponseModelImpl _value,
      $Res Function(_$QuizResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? type = freezed,
    Object? difficulty = freezed,
    Object? category = freezed,
    Object? question = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswers = freezed,
  }) {
    return _then(_$QuizResponseModelImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType?,
      difficulty: freezed == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as DifficultyLevel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      incorrectAnswers: freezed == incorrectAnswers
          ? _value._incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizResponseModelImpl extends _QuizResponseModel {
  const _$QuizResponseModelImpl(
      {this.username,
      this.type,
      this.difficulty,
      this.category,
      this.question,
      @JsonKey(name: 'correct_answer') this.correctAnswer,
      @JsonKey(name: 'incorrect_answers') final List<String>? incorrectAnswers})
      : _incorrectAnswers = incorrectAnswers,
        super._();

  factory _$QuizResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizResponseModelImplFromJson(json);

  @override
  final String? username;
  @override
  final QuestionType? type;
  @override
  final DifficultyLevel? difficulty;
  @override
  final String? category;
  @override
  final String? question;
  @override
  @JsonKey(name: 'correct_answer')
  final String? correctAnswer;
  final List<String>? _incorrectAnswers;
  @override
  @JsonKey(name: 'incorrect_answers')
  List<String>? get incorrectAnswers {
    final value = _incorrectAnswers;
    if (value == null) return null;
    if (_incorrectAnswers is EqualUnmodifiableListView)
      return _incorrectAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizResponseModel(username: $username, type: $type, difficulty: $difficulty, category: $category, question: $question, correctAnswer: $correctAnswer, incorrectAnswers: $incorrectAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResponseModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            const DeepCollectionEquality()
                .equals(other._incorrectAnswers, _incorrectAnswers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      type,
      difficulty,
      category,
      question,
      correctAnswer,
      const DeepCollectionEquality().hash(_incorrectAnswers));

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResponseModelImplCopyWith<_$QuizResponseModelImpl> get copyWith =>
      __$$QuizResponseModelImplCopyWithImpl<_$QuizResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuizResponseModel extends QuizResponseModel {
  const factory _QuizResponseModel(
      {final String? username,
      final QuestionType? type,
      final DifficultyLevel? difficulty,
      final String? category,
      final String? question,
      @JsonKey(name: 'correct_answer') final String? correctAnswer,
      @JsonKey(name: 'incorrect_answers')
      final List<String>? incorrectAnswers}) = _$QuizResponseModelImpl;
  const _QuizResponseModel._() : super._();

  factory _QuizResponseModel.fromJson(Map<String, dynamic> json) =
      _$QuizResponseModelImpl.fromJson;

  @override
  String? get username;
  @override
  QuestionType? get type;
  @override
  DifficultyLevel? get difficulty;
  @override
  String? get category;
  @override
  String? get question;
  @override
  @JsonKey(name: 'correct_answer')
  String? get correctAnswer;
  @override
  @JsonKey(name: 'incorrect_answers')
  List<String>? get incorrectAnswers;

  /// Create a copy of QuizResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuizResponseModelImplCopyWith<_$QuizResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
