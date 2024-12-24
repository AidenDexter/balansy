// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatisticState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> data) idle,
    required TResult Function() progress,
    required TResult Function(Map<DateTime, double> data) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> data)? idle,
    TResult? Function()? progress,
    TResult? Function(Map<DateTime, double> data)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> data)? idle,
    TResult Function()? progress,
    TResult Function(Map<DateTime, double> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Progress value)? progress,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticStateCopyWith<$Res> {
  factory $StatisticStateCopyWith(
          StatisticState value, $Res Function(StatisticState) then) =
      _$StatisticStateCopyWithImpl<$Res, StatisticState>;
}

/// @nodoc
class _$StatisticStateCopyWithImpl<$Res, $Val extends StatisticState>
    implements $StatisticStateCopyWith<$Res> {
  _$StatisticStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, double> data});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$StatisticStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$IdleImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ));
  }
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl(final Map<DateTime, double> data)
      : _data = data,
        super._();

  final Map<DateTime, double> _data;
  @override
  Map<DateTime, double> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'StatisticState.idle(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> data) idle,
    required TResult Function() progress,
    required TResult Function(Map<DateTime, double> data) success,
    required TResult Function(String error) error,
  }) {
    return idle(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> data)? idle,
    TResult? Function()? progress,
    TResult? Function(Map<DateTime, double> data)? success,
    TResult? Function(String error)? error,
  }) {
    return idle?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> data)? idle,
    TResult Function()? progress,
    TResult Function(Map<DateTime, double> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Idle extends StatisticState {
  const factory _Idle(final Map<DateTime, double> data) = _$IdleImpl;
  const _Idle._() : super._();

  Map<DateTime, double> get data;

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressImplCopyWith<$Res> {
  factory _$$ProgressImplCopyWith(
          _$ProgressImpl value, $Res Function(_$ProgressImpl) then) =
      __$$ProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProgressImplCopyWithImpl<$Res>
    extends _$StatisticStateCopyWithImpl<$Res, _$ProgressImpl>
    implements _$$ProgressImplCopyWith<$Res> {
  __$$ProgressImplCopyWithImpl(
      _$ProgressImpl _value, $Res Function(_$ProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProgressImpl extends _Progress {
  const _$ProgressImpl() : super._();

  @override
  String toString() {
    return 'StatisticState.progress()';
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
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> data) idle,
    required TResult Function() progress,
    required TResult Function(Map<DateTime, double> data) success,
    required TResult Function(String error) error,
  }) {
    return progress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> data)? idle,
    TResult? Function()? progress,
    TResult? Function(Map<DateTime, double> data)? success,
    TResult? Function(String error)? error,
  }) {
    return progress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> data)? idle,
    TResult Function()? progress,
    TResult Function(Map<DateTime, double> data)? success,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Progress extends StatisticState {
  const factory _Progress() = _$ProgressImpl;
  const _Progress._() : super._();
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<DateTime, double> data});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$StatisticStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl(final Map<DateTime, double> data)
      : _data = data,
        super._();

  final Map<DateTime, double> _data;
  @override
  Map<DateTime, double> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'StatisticState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> data) idle,
    required TResult Function() progress,
    required TResult Function(Map<DateTime, double> data) success,
    required TResult Function(String error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> data)? idle,
    TResult? Function()? progress,
    TResult? Function(Map<DateTime, double> data)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> data)? idle,
    TResult Function()? progress,
    TResult Function(Map<DateTime, double> data)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Success extends StatisticState {
  const factory _Success(final Map<DateTime, double> data) = _$SuccessImpl;
  const _Success._() : super._();

  Map<DateTime, double> get data;

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$StatisticStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticState
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
    return 'StatisticState.error(error: $error)';
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

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> data) idle,
    required TResult Function() progress,
    required TResult Function(Map<DateTime, double> data) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> data)? idle,
    TResult? Function()? progress,
    TResult? Function(Map<DateTime, double> data)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> data)? idle,
    TResult Function()? progress,
    TResult Function(Map<DateTime, double> data)? success,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Progress value) progress,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Progress value)? progress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

abstract class _Error extends StatisticState {
  const factory _Error(final String error) = _$ErrorImpl;
  const _Error._() : super._();

  String get error;

  /// Create a copy of StatisticState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatisticEvent {
  Map<DateTime, double> get statisticData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> statisticData) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> statisticData)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> statisticData)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChangeEvent value) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChangeEvent value)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChangeEvent value)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of StatisticEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatisticEventCopyWith<StatisticEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticEventCopyWith<$Res> {
  factory $StatisticEventCopyWith(
          StatisticEvent value, $Res Function(StatisticEvent) then) =
      _$StatisticEventCopyWithImpl<$Res, StatisticEvent>;
  @useResult
  $Res call({Map<DateTime, double> statisticData});
}

/// @nodoc
class _$StatisticEventCopyWithImpl<$Res, $Val extends StatisticEvent>
    implements $StatisticEventCopyWith<$Res> {
  _$StatisticEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatisticEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statisticData = null,
  }) {
    return _then(_value.copyWith(
      statisticData: null == statisticData
          ? _value.statisticData
          : statisticData // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnChangeEventImplCopyWith<$Res>
    implements $StatisticEventCopyWith<$Res> {
  factory _$$OnChangeEventImplCopyWith(
          _$OnChangeEventImpl value, $Res Function(_$OnChangeEventImpl) then) =
      __$$OnChangeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<DateTime, double> statisticData});
}

/// @nodoc
class __$$OnChangeEventImplCopyWithImpl<$Res>
    extends _$StatisticEventCopyWithImpl<$Res, _$OnChangeEventImpl>
    implements _$$OnChangeEventImplCopyWith<$Res> {
  __$$OnChangeEventImplCopyWithImpl(
      _$OnChangeEventImpl _value, $Res Function(_$OnChangeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatisticEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statisticData = null,
  }) {
    return _then(_$OnChangeEventImpl(
      null == statisticData
          ? _value._statisticData
          : statisticData // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, double>,
    ));
  }
}

/// @nodoc

class _$OnChangeEventImpl implements _OnChangeEvent {
  const _$OnChangeEventImpl(final Map<DateTime, double> statisticData)
      : _statisticData = statisticData;

  final Map<DateTime, double> _statisticData;
  @override
  Map<DateTime, double> get statisticData {
    if (_statisticData is EqualUnmodifiableMapView) return _statisticData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_statisticData);
  }

  @override
  String toString() {
    return 'StatisticEvent.onChange(statisticData: $statisticData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeEventImpl &&
            const DeepCollectionEquality()
                .equals(other._statisticData, _statisticData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_statisticData));

  /// Create a copy of StatisticEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeEventImplCopyWith<_$OnChangeEventImpl> get copyWith =>
      __$$OnChangeEventImplCopyWithImpl<_$OnChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<DateTime, double> statisticData) onChange,
  }) {
    return onChange(statisticData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<DateTime, double> statisticData)? onChange,
  }) {
    return onChange?.call(statisticData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<DateTime, double> statisticData)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(statisticData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChangeEvent value) onChange,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnChangeEvent value)? onChange,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChangeEvent value)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChangeEvent implements StatisticEvent {
  const factory _OnChangeEvent(final Map<DateTime, double> statisticData) =
      _$OnChangeEventImpl;

  @override
  Map<DateTime, double> get statisticData;

  /// Create a copy of StatisticEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeEventImplCopyWith<_$OnChangeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
