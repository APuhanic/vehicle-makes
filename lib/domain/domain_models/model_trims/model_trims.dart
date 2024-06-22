import 'package:freezed_annotation/freezed_annotation.dart';
part 'model_trims.freezed.dart';
part 'model_trims.g.dart';

@freezed
abstract class ModelTrim with _$ModelTrim {
  const factory ModelTrim({
    required int id,
    // ignore: non_constant_identifier_names
    required int make_model_id,
    required int year,
    required String name,
    required String description,
    required int msrp,
    required int invoice,
    required String created,
    required String modified,
  }) = _ModelTrims;

  factory ModelTrim.fromJson(Map<String, dynamic> json) =>
      _$ModelTrimFromJson(json);
}
