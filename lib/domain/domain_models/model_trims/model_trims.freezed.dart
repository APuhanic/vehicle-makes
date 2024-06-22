// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_trims.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelTrim _$ModelTrimFromJson(Map<String, dynamic> json) {
  return _ModelTrims.fromJson(json);
}

/// @nodoc
mixin _$ModelTrim {
  int get id =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get make_model_id => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get msrp => throw _privateConstructorUsedError;
  int get invoice => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModelTrimCopyWith<ModelTrim> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelTrimCopyWith<$Res> {
  factory $ModelTrimCopyWith(ModelTrim value, $Res Function(ModelTrim) then) =
      _$ModelTrimCopyWithImpl<$Res, ModelTrim>;
  @useResult
  $Res call(
      {int id,
      int make_model_id,
      int year,
      String name,
      String description,
      int msrp,
      int invoice,
      String created,
      String modified});
}

/// @nodoc
class _$ModelTrimCopyWithImpl<$Res, $Val extends ModelTrim>
    implements $ModelTrimCopyWith<$Res> {
  _$ModelTrimCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? make_model_id = null,
    Object? year = null,
    Object? name = null,
    Object? description = null,
    Object? msrp = null,
    Object? invoice = null,
    Object? created = null,
    Object? modified = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      make_model_id: null == make_model_id
          ? _value.make_model_id
          : make_model_id // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      msrp: null == msrp
          ? _value.msrp
          : msrp // ignore: cast_nullable_to_non_nullable
              as int,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModelTrimsImplCopyWith<$Res>
    implements $ModelTrimCopyWith<$Res> {
  factory _$$ModelTrimsImplCopyWith(
          _$ModelTrimsImpl value, $Res Function(_$ModelTrimsImpl) then) =
      __$$ModelTrimsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int make_model_id,
      int year,
      String name,
      String description,
      int msrp,
      int invoice,
      String created,
      String modified});
}

/// @nodoc
class __$$ModelTrimsImplCopyWithImpl<$Res>
    extends _$ModelTrimCopyWithImpl<$Res, _$ModelTrimsImpl>
    implements _$$ModelTrimsImplCopyWith<$Res> {
  __$$ModelTrimsImplCopyWithImpl(
      _$ModelTrimsImpl _value, $Res Function(_$ModelTrimsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? make_model_id = null,
    Object? year = null,
    Object? name = null,
    Object? description = null,
    Object? msrp = null,
    Object? invoice = null,
    Object? created = null,
    Object? modified = null,
  }) {
    return _then(_$ModelTrimsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      make_model_id: null == make_model_id
          ? _value.make_model_id
          : make_model_id // ignore: cast_nullable_to_non_nullable
              as int,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      msrp: null == msrp
          ? _value.msrp
          : msrp // ignore: cast_nullable_to_non_nullable
              as int,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as int,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      modified: null == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelTrimsImpl implements _ModelTrims {
  const _$ModelTrimsImpl(
      {required this.id,
      required this.make_model_id,
      required this.year,
      required this.name,
      required this.description,
      required this.msrp,
      required this.invoice,
      required this.created,
      required this.modified});

  factory _$ModelTrimsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelTrimsImplFromJson(json);

  @override
  final int id;
// ignore: non_constant_identifier_names
  @override
  final int make_model_id;
  @override
  final int year;
  @override
  final String name;
  @override
  final String description;
  @override
  final int msrp;
  @override
  final int invoice;
  @override
  final String created;
  @override
  final String modified;

  @override
  String toString() {
    return 'ModelTrim(id: $id, make_model_id: $make_model_id, year: $year, name: $name, description: $description, msrp: $msrp, invoice: $invoice, created: $created, modified: $modified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelTrimsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.make_model_id, make_model_id) ||
                other.make_model_id == make_model_id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.msrp, msrp) || other.msrp == msrp) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.modified, modified) ||
                other.modified == modified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, make_model_id, year, name,
      description, msrp, invoice, created, modified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelTrimsImplCopyWith<_$ModelTrimsImpl> get copyWith =>
      __$$ModelTrimsImplCopyWithImpl<_$ModelTrimsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelTrimsImplToJson(
      this,
    );
  }
}

abstract class _ModelTrims implements ModelTrim {
  const factory _ModelTrims(
      {required final int id,
      required final int make_model_id,
      required final int year,
      required final String name,
      required final String description,
      required final int msrp,
      required final int invoice,
      required final String created,
      required final String modified}) = _$ModelTrimsImpl;

  factory _ModelTrims.fromJson(Map<String, dynamic> json) =
      _$ModelTrimsImpl.fromJson;

  @override
  int get id;
  @override // ignore: non_constant_identifier_names
  int get make_model_id;
  @override
  int get year;
  @override
  String get name;
  @override
  String get description;
  @override
  int get msrp;
  @override
  int get invoice;
  @override
  String get created;
  @override
  String get modified;
  @override
  @JsonKey(ignore: true)
  _$$ModelTrimsImplCopyWith<_$ModelTrimsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
