// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trim_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrimBodyImpl _$$TrimBodyImplFromJson(Map<String, dynamic> json) =>
    _$TrimBodyImpl(
      id: (json['id'] as num).toInt(),
      make_model_trim_id: (json['make_model_trim_id'] as num).toInt(),
      type: json['type'] as String?,
      doors: (json['doors'] as num?)?.toInt(),
      length: json['length'] as String?,
      width: json['width'] as String?,
      seats: (json['seats'] as num?)?.toInt(),
      height: json['height'] as String?,
      wheel_base: json['wheel_base'] as String?,
      front_track: json['front_track'] as String?,
      rear_track: json['rear_track'] as String?,
      ground_clearance: json['ground_clearance'] as String?,
      cargo_capacity: json['cargo_capacity'] as String?,
      max_cargo_capacity: json['max_cargo_capacity'] as String?,
      curb_weight: (json['curb_weight'] as num?)?.toInt(),
      gross_weight: (json['gross_weight'] as num?)?.toInt(),
      max_payload: (json['max_payload'] as num?)?.toInt(),
      max_towing_capacity: (json['max_towing_capacity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TrimBodyImplToJson(_$TrimBodyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'make_model_trim_id': instance.make_model_trim_id,
      'type': instance.type,
      'doors': instance.doors,
      'length': instance.length,
      'width': instance.width,
      'seats': instance.seats,
      'height': instance.height,
      'wheel_base': instance.wheel_base,
      'front_track': instance.front_track,
      'rear_track': instance.rear_track,
      'ground_clearance': instance.ground_clearance,
      'cargo_capacity': instance.cargo_capacity,
      'max_cargo_capacity': instance.max_cargo_capacity,
      'curb_weight': instance.curb_weight,
      'gross_weight': instance.gross_weight,
      'max_payload': instance.max_payload,
      'max_towing_capacity': instance.max_towing_capacity,
    };
