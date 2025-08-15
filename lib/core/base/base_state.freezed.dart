// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AsyncValue<T> {
  T? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, String message, int? statusCode) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? data,
    TResult? Function(T? data, String message, int? statusCode)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, String message, int? statusCode)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncInitial<T> value) initial,
    required TResult Function(_AsyncLoading<T> value) loading,
    required TResult Function(_AsyncData<T> value) data,
    required TResult Function(_AsyncError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncInitial<T> value)? initial,
    TResult? Function(_AsyncLoading<T> value)? loading,
    TResult? Function(_AsyncData<T> value)? data,
    TResult? Function(_AsyncError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncInitial<T> value)? initial,
    TResult Function(_AsyncLoading<T> value)? loading,
    TResult Function(_AsyncData<T> value)? data,
    TResult Function(_AsyncError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncValueCopyWith<T, $Res> {
  factory $AsyncValueCopyWith(
          AsyncValue<T> value, $Res Function(AsyncValue<T>) then) =
      _$AsyncValueCopyWithImpl<T, $Res, AsyncValue<T>>;
}

/// @nodoc
class _$AsyncValueCopyWithImpl<T, $Res, $Val extends AsyncValue<T>>
    implements $AsyncValueCopyWith<T, $Res> {
  _$AsyncValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AsyncInitialImplCopyWith<T, $Res> {
  factory _$$AsyncInitialImplCopyWith(_$AsyncInitialImpl<T> value,
          $Res Function(_$AsyncInitialImpl<T>) then) =
      __$$AsyncInitialImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$AsyncInitialImplCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res, _$AsyncInitialImpl<T>>
    implements _$$AsyncInitialImplCopyWith<T, $Res> {
  __$$AsyncInitialImplCopyWithImpl(
      _$AsyncInitialImpl<T> _value, $Res Function(_$AsyncInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncInitialImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$AsyncInitialImpl<T> implements _AsyncInitial<T> {
  const _$AsyncInitialImpl({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'AsyncValue<$T>.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncInitialImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncInitialImplCopyWith<T, _$AsyncInitialImpl<T>> get copyWith =>
      __$$AsyncInitialImplCopyWithImpl<T, _$AsyncInitialImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, String message, int? statusCode) error,
  }) {
    return initial(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? data,
    TResult? Function(T? data, String message, int? statusCode)? error,
  }) {
    return initial?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, String message, int? statusCode)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncInitial<T> value) initial,
    required TResult Function(_AsyncLoading<T> value) loading,
    required TResult Function(_AsyncData<T> value) data,
    required TResult Function(_AsyncError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncInitial<T> value)? initial,
    TResult? Function(_AsyncLoading<T> value)? loading,
    TResult? Function(_AsyncData<T> value)? data,
    TResult? Function(_AsyncError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncInitial<T> value)? initial,
    TResult Function(_AsyncLoading<T> value)? loading,
    TResult Function(_AsyncData<T> value)? data,
    TResult Function(_AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AsyncInitial<T> implements AsyncValue<T> {
  const factory _AsyncInitial({final T? data}) = _$AsyncInitialImpl<T>;

  @override
  T? get data;

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncInitialImplCopyWith<T, _$AsyncInitialImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncLoadingImplCopyWith<T, $Res> {
  factory _$$AsyncLoadingImplCopyWith(_$AsyncLoadingImpl<T> value,
          $Res Function(_$AsyncLoadingImpl<T>) then) =
      __$$AsyncLoadingImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$AsyncLoadingImplCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res, _$AsyncLoadingImpl<T>>
    implements _$$AsyncLoadingImplCopyWith<T, $Res> {
  __$$AsyncLoadingImplCopyWithImpl(
      _$AsyncLoadingImpl<T> _value, $Res Function(_$AsyncLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncLoadingImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$AsyncLoadingImpl<T> implements _AsyncLoading<T> {
  const _$AsyncLoadingImpl({this.data});

  @override
  final T? data;

  @override
  String toString() {
    return 'AsyncValue<$T>.loading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncLoadingImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncLoadingImplCopyWith<T, _$AsyncLoadingImpl<T>> get copyWith =>
      __$$AsyncLoadingImplCopyWithImpl<T, _$AsyncLoadingImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, String message, int? statusCode) error,
  }) {
    return loading(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? data,
    TResult? Function(T? data, String message, int? statusCode)? error,
  }) {
    return loading?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, String message, int? statusCode)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncInitial<T> value) initial,
    required TResult Function(_AsyncLoading<T> value) loading,
    required TResult Function(_AsyncData<T> value) data,
    required TResult Function(_AsyncError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncInitial<T> value)? initial,
    TResult? Function(_AsyncLoading<T> value)? loading,
    TResult? Function(_AsyncData<T> value)? data,
    TResult? Function(_AsyncError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncInitial<T> value)? initial,
    TResult Function(_AsyncLoading<T> value)? loading,
    TResult Function(_AsyncData<T> value)? data,
    TResult Function(_AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AsyncLoading<T> implements AsyncValue<T> {
  const factory _AsyncLoading({final T? data}) = _$AsyncLoadingImpl<T>;

  @override
  T? get data;

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncLoadingImplCopyWith<T, _$AsyncLoadingImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncDataImplCopyWith<T, $Res> {
  factory _$$AsyncDataImplCopyWith(
          _$AsyncDataImpl<T> value, $Res Function(_$AsyncDataImpl<T>) then) =
      __$$AsyncDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AsyncDataImplCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res, _$AsyncDataImpl<T>>
    implements _$$AsyncDataImplCopyWith<T, $Res> {
  __$$AsyncDataImplCopyWithImpl(
      _$AsyncDataImpl<T> _value, $Res Function(_$AsyncDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncDataImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AsyncDataImpl<T> implements _AsyncData<T> {
  const _$AsyncDataImpl({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'AsyncValue<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncDataImplCopyWith<T, _$AsyncDataImpl<T>> get copyWith =>
      __$$AsyncDataImplCopyWithImpl<T, _$AsyncDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, String message, int? statusCode) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? data,
    TResult? Function(T? data, String message, int? statusCode)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, String message, int? statusCode)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncInitial<T> value) initial,
    required TResult Function(_AsyncLoading<T> value) loading,
    required TResult Function(_AsyncData<T> value) data,
    required TResult Function(_AsyncError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncInitial<T> value)? initial,
    TResult? Function(_AsyncLoading<T> value)? loading,
    TResult? Function(_AsyncData<T> value)? data,
    TResult? Function(_AsyncError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncInitial<T> value)? initial,
    TResult Function(_AsyncLoading<T> value)? loading,
    TResult Function(_AsyncData<T> value)? data,
    TResult Function(_AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _AsyncData<T> implements AsyncValue<T> {
  const factory _AsyncData({required final T data}) = _$AsyncDataImpl<T>;

  @override
  T get data;

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncDataImplCopyWith<T, _$AsyncDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncErrorImplCopyWith<T, $Res> {
  factory _$$AsyncErrorImplCopyWith(
          _$AsyncErrorImpl<T> value, $Res Function(_$AsyncErrorImpl<T>) then) =
      __$$AsyncErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data, String message, int? statusCode});
}

/// @nodoc
class __$$AsyncErrorImplCopyWithImpl<T, $Res>
    extends _$AsyncValueCopyWithImpl<T, $Res, _$AsyncErrorImpl<T>>
    implements _$$AsyncErrorImplCopyWith<T, $Res> {
  __$$AsyncErrorImplCopyWithImpl(
      _$AsyncErrorImpl<T> _value, $Res Function(_$AsyncErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = null,
    Object? statusCode = freezed,
  }) {
    return _then(_$AsyncErrorImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AsyncErrorImpl<T> implements _AsyncError<T> {
  const _$AsyncErrorImpl({this.data, required this.message, this.statusCode});

  @override
  final T? data;
  @override
  final String message;
  @override
  final int? statusCode;

  @override
  String toString() {
    return 'AsyncValue<$T>.error(data: $data, message: $message, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncErrorImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), message, statusCode);

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncErrorImplCopyWith<T, _$AsyncErrorImpl<T>> get copyWith =>
      __$$AsyncErrorImplCopyWithImpl<T, _$AsyncErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) initial,
    required TResult Function(T? data) loading,
    required TResult Function(T data) data,
    required TResult Function(T? data, String message, int? statusCode) error,
  }) {
    return error(this.data, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? initial,
    TResult? Function(T? data)? loading,
    TResult? Function(T data)? data,
    TResult? Function(T? data, String message, int? statusCode)? error,
  }) {
    return error?.call(this.data, message, statusCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? initial,
    TResult Function(T? data)? loading,
    TResult Function(T data)? data,
    TResult Function(T? data, String message, int? statusCode)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.data, message, statusCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AsyncInitial<T> value) initial,
    required TResult Function(_AsyncLoading<T> value) loading,
    required TResult Function(_AsyncData<T> value) data,
    required TResult Function(_AsyncError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AsyncInitial<T> value)? initial,
    TResult? Function(_AsyncLoading<T> value)? loading,
    TResult? Function(_AsyncData<T> value)? data,
    TResult? Function(_AsyncError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AsyncInitial<T> value)? initial,
    TResult Function(_AsyncLoading<T> value)? loading,
    TResult Function(_AsyncData<T> value)? data,
    TResult Function(_AsyncError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _AsyncError<T> implements AsyncValue<T> {
  const factory _AsyncError(
      {final T? data,
      required final String message,
      final int? statusCode}) = _$AsyncErrorImpl<T>;

  @override
  T? get data;
  String get message;
  int? get statusCode;

  /// Create a copy of AsyncValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncErrorImplCopyWith<T, _$AsyncErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
