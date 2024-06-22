// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_trims.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ModelTrimsImpl _$$ModelTrimsImplFromJson(Map<String, dynamic> json) =>
    _$ModelTrimsImpl(
      id: (json['id'] as num).toInt(),
      make_model_id: (json['make_model_id'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      msrp: (json['msrp'] as num).toInt(),
      invoice: (json['invoice'] as num).toInt(),
      created: json['created'] as String,
      modified: json['modified'] as String,
    );

Map<String, dynamic> _$$ModelTrimsImplToJson(_$ModelTrimsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'make_model_id': instance.make_model_id,
      'year': instance.year,
      'name': instance.name,
      'description': instance.description,
      'msrp': instance.msrp,
      'invoice': instance.invoice,
      'created': instance.created,
      'modified': instance.modified,
    };
