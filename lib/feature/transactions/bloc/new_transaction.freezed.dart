// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewTransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)
        $default, {
    required TResult Function() idle,
    required TResult Function() progress,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult? Function()? idle,
    TResult? Function()? progress,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult Function()? idle,
    TResult Function()? progress,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTransactionState value) $default, {
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTransactionState value)? $default, {
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTransactionState value)? $default, {
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTransactionStateCopyWith<$Res> {
  factory $NewTransactionStateCopyWith(
          NewTransactionState value, $Res Function(NewTransactionState) then) =
      _$NewTransactionStateCopyWithImpl<$Res, NewTransactionState>;
}

/// @nodoc
class _$NewTransactionStateCopyWithImpl<$Res, $Val extends NewTransactionState>
    implements $NewTransactionStateCopyWith<$Res> {
  _$NewTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$NewTransactionStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl() : super._();

  @override
  String toString() {
    return 'NewTransactionState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)
        $default, {
    required TResult Function() idle,
    required TResult Function() progress,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult? Function()? idle,
    TResult? Function()? progress,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult Function()? idle,
    TResult Function()? progress,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTransactionState value) $default, {
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTransactionState value)? $default, {
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTransactionState value)? $default, {
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle extends NewTransactionState {
  const factory _Idle() = _$IdleImpl;
  const _Idle._() : super._();
}

/// @nodoc
abstract class _$$ProgressImplCopyWith<$Res> {
  factory _$$ProgressImplCopyWith(
          _$ProgressImpl value, $Res Function(_$ProgressImpl) then) =
      __$$ProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressImplCopyWithImpl<$Res>
    extends _$NewTransactionStateCopyWithImpl<$Res, _$ProgressImpl>
    implements _$$ProgressImplCopyWith<$Res> {
  __$$ProgressImplCopyWithImpl(
      _$ProgressImpl _value, $Res Function(_$ProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgressImpl extends _Progress {
  const _$ProgressImpl() : super._();

  @override
  String toString() {
    return 'NewTransactionState.progress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)
        $default, {
    required TResult Function() idle,
    required TResult Function() progress,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult? Function()? idle,
    TResult? Function()? progress,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult Function()? idle,
    TResult Function()? progress,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTransactionState value) $default, {
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTransactionState value)? $default, {
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTransactionState value)? $default, {
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }
}

abstract class _Progress extends NewTransactionState {
  const factory _Progress() = _$ProgressImpl;
  const _Progress._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$NewTransactionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl() : super._();

  @override
  String toString() {
    return 'NewTransactionState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)
        $default, {
    required TResult Function() idle,
    required TResult Function() progress,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult? Function()? idle,
    TResult? Function()? progress,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult Function()? idle,
    TResult Function()? progress,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTransactionState value) $default, {
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTransactionState value)? $default, {
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTransactionState value)? $default, {
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success extends NewTransactionState {
  const factory _Success() = _$SuccessImpl;
  const _Success._() : super._();
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$NewTransactionStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(this.error) : super._();

  @override
  final String error;

  @override
  String toString() {
    return 'NewTransactionState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)
        $default, {
    required TResult Function() idle,
    required TResult Function() progress,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult? Function()? idle,
    TResult? Function()? progress,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult Function()? idle,
    TResult Function()? progress,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTransactionState value) $default, {
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTransactionState value)? $default, {
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTransactionState value)? $default, {
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends NewTransactionState {
  const factory _Error(final String error) = _$ErrorImpl;
  const _Error._() : super._();

  String get error;

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewTransactionStateImplCopyWith<$Res> {
  factory _$$NewTransactionStateImplCopyWith(_$NewTransactionStateImpl value,
          $Res Function(_$NewTransactionStateImpl) then) =
      __$$NewTransactionStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {TransactionType transactionType, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$NewTransactionStateImplCopyWithImpl<$Res>
    extends _$NewTransactionStateCopyWithImpl<$Res, _$NewTransactionStateImpl>
    implements _$$NewTransactionStateImplCopyWith<$Res> {
  __$$NewTransactionStateImplCopyWithImpl(_$NewTransactionStateImpl _value,
      $Res Function(_$NewTransactionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionType = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$NewTransactionStateImpl(
      transactionType: null == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NewTransactionStateImpl extends _NewTransactionState {
  const _$NewTransactionStateImpl(
      {required this.transactionType,
      required this.isLoading,
      required this.errorMessage})
      : super._();

  @override
  final TransactionType transactionType;
  @override
  final bool isLoading;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NewTransactionState(transactionType: $transactionType, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTransactionStateImpl &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, transactionType, isLoading, errorMessage);

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTransactionStateImplCopyWith<_$NewTransactionStateImpl> get copyWith =>
      __$$NewTransactionStateImplCopyWithImpl<_$NewTransactionStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)
        $default, {
    required TResult Function() idle,
    required TResult Function() progress,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return $default(transactionType, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult? Function()? idle,
    TResult? Function()? progress,
    TResult? Function()? success,
    TResult? Function(String error)? error,
  }) {
    return $default?.call(transactionType, isLoading, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(TransactionType transactionType, bool isLoading,
            String? errorMessage)?
        $default, {
    TResult Function()? idle,
    TResult Function()? progress,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(transactionType, isLoading, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NewTransactionState value) $default, {
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_NewTransactionState value)? $default, {
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_NewTransactionState value)? $default, {
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _NewTransactionState extends NewTransactionState {
  const factory _NewTransactionState(
      {required final TransactionType transactionType,
      required final bool isLoading,
      required final String? errorMessage}) = _$NewTransactionStateImpl;
  const _NewTransactionState._() : super._();

  TransactionType get transactionType;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of NewTransactionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewTransactionStateImplCopyWith<_$NewTransactionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewTransactionEvent {
  MyTransaction get transaction => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyTransaction transaction) add,
    required TResult Function(MyTransaction transaction) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyTransaction transaction)? add,
    TResult? Function(MyTransaction transaction)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyTransaction transaction)? add,
    TResult Function(MyTransaction transaction)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) add,
    required TResult Function(_UpdateTransactionEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? add,
    TResult? Function(_UpdateTransactionEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? add,
    TResult Function(_UpdateTransactionEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewTransactionEventCopyWith<NewTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTransactionEventCopyWith<$Res> {
  factory $NewTransactionEventCopyWith(
          NewTransactionEvent value, $Res Function(NewTransactionEvent) then) =
      _$NewTransactionEventCopyWithImpl<$Res, NewTransactionEvent>;
  @useResult
  $Res call({MyTransaction transaction});
}

/// @nodoc
class _$NewTransactionEventCopyWithImpl<$Res, $Val extends NewTransactionEvent>
    implements $NewTransactionEventCopyWith<$Res> {
  _$NewTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as MyTransaction,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddTransactionEventImplCopyWith<$Res>
    implements $NewTransactionEventCopyWith<$Res> {
  factory _$$AddTransactionEventImplCopyWith(_$AddTransactionEventImpl value,
          $Res Function(_$AddTransactionEventImpl) then) =
      __$$AddTransactionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyTransaction transaction});
}

/// @nodoc
class __$$AddTransactionEventImplCopyWithImpl<$Res>
    extends _$NewTransactionEventCopyWithImpl<$Res, _$AddTransactionEventImpl>
    implements _$$AddTransactionEventImplCopyWith<$Res> {
  __$$AddTransactionEventImplCopyWithImpl(_$AddTransactionEventImpl _value,
      $Res Function(_$AddTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$AddTransactionEventImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as MyTransaction,
    ));
  }
}

/// @nodoc

class _$AddTransactionEventImpl implements _AddTransactionEvent {
  const _$AddTransactionEventImpl({required this.transaction});

  @override
  final MyTransaction transaction;

  @override
  String toString() {
    return 'NewTransactionEvent.add(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTransactionEventImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTransactionEventImplCopyWith<_$AddTransactionEventImpl> get copyWith =>
      __$$AddTransactionEventImplCopyWithImpl<_$AddTransactionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyTransaction transaction) add,
    required TResult Function(MyTransaction transaction) update,
  }) {
    return add(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyTransaction transaction)? add,
    TResult? Function(MyTransaction transaction)? update,
  }) {
    return add?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyTransaction transaction)? add,
    TResult Function(MyTransaction transaction)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) add,
    required TResult Function(_UpdateTransactionEvent value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? add,
    TResult? Function(_UpdateTransactionEvent value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? add,
    TResult Function(_UpdateTransactionEvent value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddTransactionEvent implements NewTransactionEvent {
  const factory _AddTransactionEvent(
      {required final MyTransaction transaction}) = _$AddTransactionEventImpl;

  @override
  MyTransaction get transaction;

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddTransactionEventImplCopyWith<_$AddTransactionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTransactionEventImplCopyWith<$Res>
    implements $NewTransactionEventCopyWith<$Res> {
  factory _$$UpdateTransactionEventImplCopyWith(
          _$UpdateTransactionEventImpl value,
          $Res Function(_$UpdateTransactionEventImpl) then) =
      __$$UpdateTransactionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MyTransaction transaction});
}

/// @nodoc
class __$$UpdateTransactionEventImplCopyWithImpl<$Res>
    extends _$NewTransactionEventCopyWithImpl<$Res,
        _$UpdateTransactionEventImpl>
    implements _$$UpdateTransactionEventImplCopyWith<$Res> {
  __$$UpdateTransactionEventImplCopyWithImpl(
      _$UpdateTransactionEventImpl _value,
      $Res Function(_$UpdateTransactionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$UpdateTransactionEventImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as MyTransaction,
    ));
  }
}

/// @nodoc

class _$UpdateTransactionEventImpl implements _UpdateTransactionEvent {
  const _$UpdateTransactionEventImpl({required this.transaction});

  @override
  final MyTransaction transaction;

  @override
  String toString() {
    return 'NewTransactionEvent.update(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTransactionEventImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTransactionEventImplCopyWith<_$UpdateTransactionEventImpl>
      get copyWith => __$$UpdateTransactionEventImplCopyWithImpl<
          _$UpdateTransactionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MyTransaction transaction) add,
    required TResult Function(MyTransaction transaction) update,
  }) {
    return update(transaction);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MyTransaction transaction)? add,
    TResult? Function(MyTransaction transaction)? update,
  }) {
    return update?.call(transaction);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MyTransaction transaction)? add,
    TResult Function(MyTransaction transaction)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(transaction);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddTransactionEvent value) add,
    required TResult Function(_UpdateTransactionEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddTransactionEvent value)? add,
    TResult? Function(_UpdateTransactionEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddTransactionEvent value)? add,
    TResult Function(_UpdateTransactionEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateTransactionEvent implements NewTransactionEvent {
  const factory _UpdateTransactionEvent(
          {required final MyTransaction transaction}) =
      _$UpdateTransactionEventImpl;

  @override
  MyTransaction get transaction;

  /// Create a copy of NewTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTransactionEventImplCopyWith<_$UpdateTransactionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
