// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_make.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleMake _$VehicleMakeFromJson(Map<String, dynamic> json) {
  return _VehicleMake.fromJson(json);
}

/// @nodoc
mixin _$VehicleMake {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleMakeCopyWith<VehicleMake> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleMakeCopyWith<$Res> {
  factory $VehicleMakeCopyWith(
          VehicleMake value, $Res Function(VehicleMake) then) =
      _$VehicleMakeCopyWithImpl<$Res, VehicleMake>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$VehicleMakeCopyWithImpl<$Res, $Val extends VehicleMake>
    implements $VehicleMakeCopyWith<$Res> {
  _$VehicleMakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleMakeImplCopyWith<$Res>
    implements $VehicleMakeCopyWith<$Res> {
  factory _$$VehicleMakeImplCopyWith(
          _$VehicleMakeImpl value, $Res Function(_$VehicleMakeImpl) then) =
      __$$VehicleMakeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$VehicleMakeImplCopyWithImpl<$Res>
    extends _$VehicleMakeCopyWithImpl<$Res, _$VehicleMakeImpl>
    implements _$$VehicleMakeImplCopyWith<$Res> {
  __$$VehicleMakeImplCopyWithImpl(
      _$VehicleMakeImpl _value, $Res Function(_$VehicleMakeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$VehicleMakeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleMakeImpl implements _VehicleMake {
  const _$VehicleMakeImpl({required this.id, required this.name});

  factory _$VehicleMakeImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleMakeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'VehicleMake(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleMakeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleMakeImplCopyWith<_$VehicleMakeImpl> get copyWith =>
      __$$VehicleMakeImplCopyWithImpl<_$VehicleMakeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleMakeImplToJson(
      this,
    );
  }
}

abstract class _VehicleMake implements VehicleMake {
  const factory _VehicleMake(
      {required final int id, required final String name}) = _$VehicleMakeImpl;

  factory _VehicleMake.fromJson(Map<String, dynamic> json) =
      _$VehicleMakeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$VehicleMakeImplCopyWith<_$VehicleMakeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
