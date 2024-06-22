// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trim_body.freezed.dart';
part 'trim_body.g.dart';

@freezed
abstract class TrimBody with _$TrimBody {
  const factory TrimBody({
    required int id,
    required int make_model_trim_id,
    String? type,
    int? doors,
    String? length,
    String? width,
    int? seats,
    String? height,
    String? wheel_base,
    String? front_track,
    String? rear_track,
    String? ground_clearance,
    String? cargo_capacity,
    String? max_cargo_capacity,
    int? curb_weight,
    int? gross_weight,
    int? max_payload,
    int? max_towing_capacity,
  }) = _TrimBody;

  factory TrimBody.fromJson(Map<String, dynamic> json) =>
      _$TrimBodyFromJson(json);
}
