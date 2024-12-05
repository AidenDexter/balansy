// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesState {
  List<Category> get categories => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) idle,
    required TResult Function(List<Category> categories) progress,
    required TResult Function(List<Category> categories) success,
    required TResult Function(List<Category> categories, String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories)? idle,
    TResult? Function(List<Category> categories)? progress,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(List<Category> categories, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? idle,
    TResult Function(List<Category> categories)? progress,
    TResult Function(List<Category> categories)? success,
    TResult Function(List<Category> categories, String error)? error,
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

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$IdleImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl({required final List<Category> categories})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.idle(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) idle,
    required TResult Function(List<Category> categories) progress,
    required TResult Function(List<Category> categories) success,
    required TResult Function(List<Category> categories, String error) error,
  }) {
    return idle(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories)? idle,
    TResult? Function(List<Category> categories)? progress,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(List<Category> categories, String error)? error,
  }) {
    return idle?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? idle,
    TResult Function(List<Category> categories)? progress,
    TResult Function(List<Category> categories)? success,
    TResult Function(List<Category> categories, String error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(categories);
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

abstract class _Idle extends CategoriesState {
  const factory _Idle({required final List<Category> categories}) = _$IdleImpl;
  const _Idle._() : super._();

  @override
  List<Category> get categories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProgressImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$ProgressImplCopyWith(
          _$ProgressImpl value, $Res Function(_$ProgressImpl) then) =
      __$$ProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$ProgressImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$ProgressImpl>
    implements _$$ProgressImplCopyWith<$Res> {
  __$$ProgressImplCopyWithImpl(
      _$ProgressImpl _value, $Res Function(_$ProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$ProgressImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$ProgressImpl extends _Progress {
  const _$ProgressImpl({required final List<Category> categories})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.progress(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      __$$ProgressImplCopyWithImpl<_$ProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) idle,
    required TResult Function(List<Category> categories) progress,
    required TResult Function(List<Category> categories) success,
    required TResult Function(List<Category> categories, String error) error,
  }) {
    return progress(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories)? idle,
    TResult? Function(List<Category> categories)? progress,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(List<Category> categories, String error)? error,
  }) {
    return progress?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? idle,
    TResult Function(List<Category> categories)? progress,
    TResult Function(List<Category> categories)? success,
    TResult Function(List<Category> categories, String error)? error,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(categories);
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

abstract class _Progress extends CategoriesState {
  const factory _Progress({required final List<Category> categories}) =
      _$ProgressImpl;
  const _Progress._() : super._();

  @override
  List<Category> get categories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProgressImplCopyWith<_$ProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$SuccessImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl extends _Success {
  const _$SuccessImpl({required final List<Category> categories})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesState.success(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) idle,
    required TResult Function(List<Category> categories) progress,
    required TResult Function(List<Category> categories) success,
    required TResult Function(List<Category> categories, String error) error,
  }) {
    return success(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories)? idle,
    TResult? Function(List<Category> categories)? progress,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(List<Category> categories, String error)? error,
  }) {
    return success?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? idle,
    TResult Function(List<Category> categories)? progress,
    TResult Function(List<Category> categories)? success,
    TResult Function(List<Category> categories, String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categories);
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

abstract class _Success extends CategoriesState {
  const factory _Success({required final List<Category> categories}) =
      _$SuccessImpl;
  const _Success._() : super._();

  @override
  List<Category> get categories;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> categories, String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl(
      {required final List<Category> categories, required this.error})
      : _categories = categories,
        super._();

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String error;

  @override
  String toString() {
    return 'CategoriesState.error(categories: $categories, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories), error);

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Category> categories) idle,
    required TResult Function(List<Category> categories) progress,
    required TResult Function(List<Category> categories) success,
    required TResult Function(List<Category> categories, String error) error,
  }) {
    return error(categories, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Category> categories)? idle,
    TResult? Function(List<Category> categories)? progress,
    TResult? Function(List<Category> categories)? success,
    TResult? Function(List<Category> categories, String error)? error,
  }) {
    return error?.call(categories, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Category> categories)? idle,
    TResult Function(List<Category> categories)? progress,
    TResult Function(List<Category> categories)? success,
    TResult Function(List<Category> categories, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(categories, this.error);
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

abstract class _Error extends CategoriesState {
  const factory _Error(
      {required final List<Category> categories,
      required final String error}) = _$ErrorImpl;
  const _Error._() : super._();

  @override
  List<Category> get categories;
  String get error;

  /// Create a copy of CategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) add,
    required TResult Function(int id) delete,
    required TResult Function(List<Category> categories) onChange,
    required TResult Function(Category category) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? add,
    TResult? Function(int id)? delete,
    TResult? Function(List<Category> categories)? onChange,
    TResult? Function(Category category)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? add,
    TResult Function(int id)? delete,
    TResult Function(List<Category> categories)? onChange,
    TResult Function(Category category)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) add,
    required TResult Function(_DeleteCategoryEvent value) delete,
    required TResult Function(_OnChangeCategoriesEvent value) onChange,
    required TResult Function(_UpdateCategoryEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? add,
    TResult? Function(_DeleteCategoryEvent value)? delete,
    TResult? Function(_OnChangeCategoriesEvent value)? onChange,
    TResult? Function(_UpdateCategoryEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? add,
    TResult Function(_DeleteCategoryEvent value)? delete,
    TResult Function(_OnChangeCategoriesEvent value)? onChange,
    TResult Function(_UpdateCategoryEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddCategoryEventImplCopyWith<$Res> {
  factory _$$AddCategoryEventImplCopyWith(_$AddCategoryEventImpl value,
          $Res Function(_$AddCategoryEventImpl) then) =
      __$$AddCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class __$$AddCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$AddCategoryEventImpl>
    implements _$$AddCategoryEventImplCopyWith<$Res> {
  __$$AddCategoryEventImplCopyWithImpl(_$AddCategoryEventImpl _value,
      $Res Function(_$AddCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$AddCategoryEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$AddCategoryEventImpl implements _AddCategoryEvent {
  const _$AddCategoryEventImpl({required this.category});

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoriesEvent.add(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryEventImplCopyWith<_$AddCategoryEventImpl> get copyWith =>
      __$$AddCategoryEventImplCopyWithImpl<_$AddCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) add,
    required TResult Function(int id) delete,
    required TResult Function(List<Category> categories) onChange,
    required TResult Function(Category category) update,
  }) {
    return add(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? add,
    TResult? Function(int id)? delete,
    TResult? Function(List<Category> categories)? onChange,
    TResult? Function(Category category)? update,
  }) {
    return add?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? add,
    TResult Function(int id)? delete,
    TResult Function(List<Category> categories)? onChange,
    TResult Function(Category category)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) add,
    required TResult Function(_DeleteCategoryEvent value) delete,
    required TResult Function(_OnChangeCategoriesEvent value) onChange,
    required TResult Function(_UpdateCategoryEvent value) update,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? add,
    TResult? Function(_DeleteCategoryEvent value)? delete,
    TResult? Function(_OnChangeCategoriesEvent value)? onChange,
    TResult? Function(_UpdateCategoryEvent value)? update,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? add,
    TResult Function(_DeleteCategoryEvent value)? delete,
    TResult Function(_OnChangeCategoriesEvent value)? onChange,
    TResult Function(_UpdateCategoryEvent value)? update,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddCategoryEvent implements CategoriesEvent {
  const factory _AddCategoryEvent({required final Category category}) =
      _$AddCategoryEventImpl;

  Category get category;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCategoryEventImplCopyWith<_$AddCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCategoryEventImplCopyWith<$Res> {
  factory _$$DeleteCategoryEventImplCopyWith(_$DeleteCategoryEventImpl value,
          $Res Function(_$DeleteCategoryEventImpl) then) =
      __$$DeleteCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$DeleteCategoryEventImpl>
    implements _$$DeleteCategoryEventImplCopyWith<$Res> {
  __$$DeleteCategoryEventImplCopyWithImpl(_$DeleteCategoryEventImpl _value,
      $Res Function(_$DeleteCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCategoryEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCategoryEventImpl implements _DeleteCategoryEvent {
  const _$DeleteCategoryEventImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CategoriesEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCategoryEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      __$$DeleteCategoryEventImplCopyWithImpl<_$DeleteCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) add,
    required TResult Function(int id) delete,
    required TResult Function(List<Category> categories) onChange,
    required TResult Function(Category category) update,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? add,
    TResult? Function(int id)? delete,
    TResult? Function(List<Category> categories)? onChange,
    TResult? Function(Category category)? update,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? add,
    TResult Function(int id)? delete,
    TResult Function(List<Category> categories)? onChange,
    TResult Function(Category category)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) add,
    required TResult Function(_DeleteCategoryEvent value) delete,
    required TResult Function(_OnChangeCategoriesEvent value) onChange,
    required TResult Function(_UpdateCategoryEvent value) update,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? add,
    TResult? Function(_DeleteCategoryEvent value)? delete,
    TResult? Function(_OnChangeCategoriesEvent value)? onChange,
    TResult? Function(_UpdateCategoryEvent value)? update,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? add,
    TResult Function(_DeleteCategoryEvent value)? delete,
    TResult Function(_OnChangeCategoriesEvent value)? onChange,
    TResult Function(_UpdateCategoryEvent value)? update,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteCategoryEvent implements CategoriesEvent {
  const factory _DeleteCategoryEvent({required final int id}) =
      _$DeleteCategoryEventImpl;

  int get id;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCategoryEventImplCopyWith<_$DeleteCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnChangeCategoriesEventImplCopyWith<$Res> {
  factory _$$OnChangeCategoriesEventImplCopyWith(
          _$OnChangeCategoriesEventImpl value,
          $Res Function(_$OnChangeCategoriesEventImpl) then) =
      __$$OnChangeCategoriesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Category> categories});
}

/// @nodoc
class __$$OnChangeCategoriesEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$OnChangeCategoriesEventImpl>
    implements _$$OnChangeCategoriesEventImplCopyWith<$Res> {
  __$$OnChangeCategoriesEventImplCopyWithImpl(
      _$OnChangeCategoriesEventImpl _value,
      $Res Function(_$OnChangeCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$OnChangeCategoriesEventImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$OnChangeCategoriesEventImpl implements _OnChangeCategoriesEvent {
  const _$OnChangeCategoriesEventImpl(
      {required final List<Category> categories})
      : _categories = categories;

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'CategoriesEvent.onChange(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnChangeCategoriesEventImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnChangeCategoriesEventImplCopyWith<_$OnChangeCategoriesEventImpl>
      get copyWith => __$$OnChangeCategoriesEventImplCopyWithImpl<
          _$OnChangeCategoriesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) add,
    required TResult Function(int id) delete,
    required TResult Function(List<Category> categories) onChange,
    required TResult Function(Category category) update,
  }) {
    return onChange(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? add,
    TResult? Function(int id)? delete,
    TResult? Function(List<Category> categories)? onChange,
    TResult? Function(Category category)? update,
  }) {
    return onChange?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? add,
    TResult Function(int id)? delete,
    TResult Function(List<Category> categories)? onChange,
    TResult Function(Category category)? update,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) add,
    required TResult Function(_DeleteCategoryEvent value) delete,
    required TResult Function(_OnChangeCategoriesEvent value) onChange,
    required TResult Function(_UpdateCategoryEvent value) update,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? add,
    TResult? Function(_DeleteCategoryEvent value)? delete,
    TResult? Function(_OnChangeCategoriesEvent value)? onChange,
    TResult? Function(_UpdateCategoryEvent value)? update,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? add,
    TResult Function(_DeleteCategoryEvent value)? delete,
    TResult Function(_OnChangeCategoriesEvent value)? onChange,
    TResult Function(_UpdateCategoryEvent value)? update,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChangeCategoriesEvent implements CategoriesEvent {
  const factory _OnChangeCategoriesEvent(
          {required final List<Category> categories}) =
      _$OnChangeCategoriesEventImpl;

  List<Category> get categories;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnChangeCategoriesEventImplCopyWith<_$OnChangeCategoriesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCategoryEventImplCopyWith<$Res> {
  factory _$$UpdateCategoryEventImplCopyWith(_$UpdateCategoryEventImpl value,
          $Res Function(_$UpdateCategoryEventImpl) then) =
      __$$UpdateCategoryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Category category});
}

/// @nodoc
class __$$UpdateCategoryEventImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$UpdateCategoryEventImpl>
    implements _$$UpdateCategoryEventImplCopyWith<$Res> {
  __$$UpdateCategoryEventImplCopyWithImpl(_$UpdateCategoryEventImpl _value,
      $Res Function(_$UpdateCategoryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$UpdateCategoryEventImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$UpdateCategoryEventImpl implements _UpdateCategoryEvent {
  const _$UpdateCategoryEventImpl({required this.category});

  @override
  final Category category;

  @override
  String toString() {
    return 'CategoriesEvent.update(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCategoryEventImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCategoryEventImplCopyWith<_$UpdateCategoryEventImpl> get copyWith =>
      __$$UpdateCategoryEventImplCopyWithImpl<_$UpdateCategoryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) add,
    required TResult Function(int id) delete,
    required TResult Function(List<Category> categories) onChange,
    required TResult Function(Category category) update,
  }) {
    return update(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Category category)? add,
    TResult? Function(int id)? delete,
    TResult? Function(List<Category> categories)? onChange,
    TResult? Function(Category category)? update,
  }) {
    return update?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? add,
    TResult Function(int id)? delete,
    TResult Function(List<Category> categories)? onChange,
    TResult Function(Category category)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddCategoryEvent value) add,
    required TResult Function(_DeleteCategoryEvent value) delete,
    required TResult Function(_OnChangeCategoriesEvent value) onChange,
    required TResult Function(_UpdateCategoryEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddCategoryEvent value)? add,
    TResult? Function(_DeleteCategoryEvent value)? delete,
    TResult? Function(_OnChangeCategoriesEvent value)? onChange,
    TResult? Function(_UpdateCategoryEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddCategoryEvent value)? add,
    TResult Function(_DeleteCategoryEvent value)? delete,
    TResult Function(_OnChangeCategoriesEvent value)? onChange,
    TResult Function(_UpdateCategoryEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateCategoryEvent implements CategoriesEvent {
  const factory _UpdateCategoryEvent({required final Category category}) =
      _$UpdateCategoryEventImpl;

  Category get category;

  /// Create a copy of CategoriesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCategoryEventImplCopyWith<_$UpdateCategoryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
