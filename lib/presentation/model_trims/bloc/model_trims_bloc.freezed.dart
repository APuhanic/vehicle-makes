// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_trims_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ModelTrimsEvent {
  int get modelId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) fetchModelTrims,
    required TResult Function(int modelId, int year) filterModelTrims,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? fetchModelTrims,
    TResult? Function(int modelId, int year)? filterModelTrims,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? fetchModelTrims,
    TResult Function(int modelId, int year)? filterModelTrims,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchModelTrims value) fetchModelTrims,
    required TResult Function(_FilterModelTrims value) filterModelTrims,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchModelTrims value)? fetchModelTrims,
    TResult? Function(_FilterModelTrims value)? filterModelTrims,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchModelTrims value)? fetchModelTrims,
    TResult Function(_FilterModelTrims value)? filterModelTrims,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelTrimsEventCopyWith<ModelTrimsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelTrimsEventCopyWith<$Res> {
  factory $ModelTrimsEventCopyWith(
          ModelTrimsEvent value, $Res Function(ModelTrimsEvent) then) =
      _$ModelTrimsEventCopyWithImpl<$Res, ModelTrimsEvent>;
  @useResult
  $Res call({int modelId});
}

/// @nodoc
class _$ModelTrimsEventCopyWithImpl<$Res, $Val extends ModelTrimsEvent>
    implements $ModelTrimsEventCopyWith<$Res> {
  _$ModelTrimsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
  }) {
    return _then(_value.copyWith(
      modelId: null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchModelTrimsImplCopyWith<$Res>
    implements $ModelTrimsEventCopyWith<$Res> {
  factory _$$FetchModelTrimsImplCopyWith(_$FetchModelTrimsImpl value,
          $Res Function(_$FetchModelTrimsImpl) then) =
      __$$FetchModelTrimsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int modelId});
}

/// @nodoc
class __$$FetchModelTrimsImplCopyWithImpl<$Res>
    extends _$ModelTrimsEventCopyWithImpl<$Res, _$FetchModelTrimsImpl>
    implements _$$FetchModelTrimsImplCopyWith<$Res> {
  __$$FetchModelTrimsImplCopyWithImpl(
      _$FetchModelTrimsImpl _value, $Res Function(_$FetchModelTrimsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
  }) {
    return _then(_$FetchModelTrimsImpl(
      null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchModelTrimsImpl implements _FetchModelTrims {
  const _$FetchModelTrimsImpl(this.modelId);

  @override
  final int modelId;

  @override
  String toString() {
    return 'ModelTrimsEvent.fetchModelTrims(modelId: $modelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchModelTrimsImpl &&
            (identical(other.modelId, modelId) || other.modelId == modelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchModelTrimsImplCopyWith<_$FetchModelTrimsImpl> get copyWith =>
      __$$FetchModelTrimsImplCopyWithImpl<_$FetchModelTrimsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) fetchModelTrims,
    required TResult Function(int modelId, int year) filterModelTrims,
  }) {
    return fetchModelTrims(modelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? fetchModelTrims,
    TResult? Function(int modelId, int year)? filterModelTrims,
  }) {
    return fetchModelTrims?.call(modelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? fetchModelTrims,
    TResult Function(int modelId, int year)? filterModelTrims,
    required TResult orElse(),
  }) {
    if (fetchModelTrims != null) {
      return fetchModelTrims(modelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchModelTrims value) fetchModelTrims,
    required TResult Function(_FilterModelTrims value) filterModelTrims,
  }) {
    return fetchModelTrims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchModelTrims value)? fetchModelTrims,
    TResult? Function(_FilterModelTrims value)? filterModelTrims,
  }) {
    return fetchModelTrims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchModelTrims value)? fetchModelTrims,
    TResult Function(_FilterModelTrims value)? filterModelTrims,
    required TResult orElse(),
  }) {
    if (fetchModelTrims != null) {
      return fetchModelTrims(this);
    }
    return orElse();
  }
}

abstract class _FetchModelTrims implements ModelTrimsEvent {
  const factory _FetchModelTrims(final int modelId) = _$FetchModelTrimsImpl;

  @override
  int get modelId;
  @override
  @JsonKey(ignore: true)
  _$$FetchModelTrimsImplCopyWith<_$FetchModelTrimsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterModelTrimsImplCopyWith<$Res>
    implements $ModelTrimsEventCopyWith<$Res> {
  factory _$$FilterModelTrimsImplCopyWith(_$FilterModelTrimsImpl value,
          $Res Function(_$FilterModelTrimsImpl) then) =
      __$$FilterModelTrimsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int modelId, int year});
}

/// @nodoc
class __$$FilterModelTrimsImplCopyWithImpl<$Res>
    extends _$ModelTrimsEventCopyWithImpl<$Res, _$FilterModelTrimsImpl>
    implements _$$FilterModelTrimsImplCopyWith<$Res> {
  __$$FilterModelTrimsImplCopyWithImpl(_$FilterModelTrimsImpl _value,
      $Res Function(_$FilterModelTrimsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelId = null,
    Object? year = null,
  }) {
    return _then(_$FilterModelTrimsImpl(
      null == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int,
      null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FilterModelTrimsImpl implements _FilterModelTrims {
  const _$FilterModelTrimsImpl(this.modelId, this.year);

  @override
  final int modelId;
  @override
  final int year;

  @override
  String toString() {
    return 'ModelTrimsEvent.filterModelTrims(modelId: $modelId, year: $year)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterModelTrimsImpl &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modelId, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterModelTrimsImplCopyWith<_$FilterModelTrimsImpl> get copyWith =>
      __$$FilterModelTrimsImplCopyWithImpl<_$FilterModelTrimsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int modelId) fetchModelTrims,
    required TResult Function(int modelId, int year) filterModelTrims,
  }) {
    return filterModelTrims(modelId, year);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int modelId)? fetchModelTrims,
    TResult? Function(int modelId, int year)? filterModelTrims,
  }) {
    return filterModelTrims?.call(modelId, year);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int modelId)? fetchModelTrims,
    TResult Function(int modelId, int year)? filterModelTrims,
    required TResult orElse(),
  }) {
    if (filterModelTrims != null) {
      return filterModelTrims(modelId, year);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchModelTrims value) fetchModelTrims,
    required TResult Function(_FilterModelTrims value) filterModelTrims,
  }) {
    return filterModelTrims(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchModelTrims value)? fetchModelTrims,
    TResult? Function(_FilterModelTrims value)? filterModelTrims,
  }) {
    return filterModelTrims?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchModelTrims value)? fetchModelTrims,
    TResult Function(_FilterModelTrims value)? filterModelTrims,
    required TResult orElse(),
  }) {
    if (filterModelTrims != null) {
      return filterModelTrims(this);
    }
    return orElse();
  }
}

abstract class _FilterModelTrims implements ModelTrimsEvent {
  const factory _FilterModelTrims(final int modelId, final int year) =
      _$FilterModelTrimsImpl;

  @override
  int get modelId;
  int get year;
  @override
  @JsonKey(ignore: true)
  _$$FilterModelTrimsImplCopyWith<_$FilterModelTrimsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ModelTrimsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ModelTrim> modelTrims) loaded,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ModelTrim> modelTrims)? loaded,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ModelTrim> modelTrims)? loaded,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelTrimsStateCopyWith<$Res> {
  factory $ModelTrimsStateCopyWith(
          ModelTrimsState value, $Res Function(ModelTrimsState) then) =
      _$ModelTrimsStateCopyWithImpl<$Res, ModelTrimsState>;
}

/// @nodoc
class _$ModelTrimsStateCopyWithImpl<$Res, $Val extends ModelTrimsState>
    implements $ModelTrimsStateCopyWith<$Res> {
  _$ModelTrimsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ModelTrimsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ModelTrimsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ModelTrim> modelTrims) loaded,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ModelTrim> modelTrims)? loaded,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ModelTrim> modelTrims)? loaded,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ModelTrimsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ModelTrimsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ModelTrimsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ModelTrim> modelTrims) loaded,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ModelTrim> modelTrims)? loaded,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ModelTrim> modelTrims)? loaded,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ModelTrimsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ModelTrim> modelTrims});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ModelTrimsStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelTrims = null,
  }) {
    return _then(_$LoadedImpl(
      null == modelTrims
          ? _value._modelTrims
          : modelTrims // ignore: cast_nullable_to_non_nullable
              as List<ModelTrim>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<ModelTrim> modelTrims)
      : _modelTrims = modelTrims;

  final List<ModelTrim> _modelTrims;
  @override
  List<ModelTrim> get modelTrims {
    if (_modelTrims is EqualUnmodifiableListView) return _modelTrims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelTrims);
  }

  @override
  String toString() {
    return 'ModelTrimsState.loaded(modelTrims: $modelTrims)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._modelTrims, _modelTrims));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_modelTrims));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ModelTrim> modelTrims) loaded,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loaded(modelTrims);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ModelTrim> modelTrims)? loaded,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(modelTrims);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ModelTrim> modelTrims)? loaded,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(modelTrims);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ModelTrimsState {
  const factory _Loaded(final List<ModelTrim> modelTrims) = _$LoadedImpl;

  List<ModelTrim> get modelTrims;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$ModelTrimsStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements _Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'ModelTrimsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ModelTrim> modelTrims) loaded,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ModelTrim> modelTrims)? loaded,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ModelTrim> modelTrims)? loaded,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements ModelTrimsState {
  const factory _Empty() = _$EmptyImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ModelTrimsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ModelTrimsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ModelTrim> modelTrims) loaded,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ModelTrim> modelTrims)? loaded,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ModelTrim> modelTrims)? loaded,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Empty value)? empty,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ModelTrimsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
