import 'package:freezed_annotation/freezed_annotation.dart';
part 'vehicle_make.freezed.dart';
part 'vehicle_make.g.dart';

@freezed
abstract class VehicleMake with _$VehicleMake {
  const factory VehicleMake({
    required String id,
    required String name,
    required String abrv,
  }) = _VehicleMake;

  factory VehicleMake.fromJson(Map<String, dynamic> json) =>
      _$VehicleMakeFromJson(json);
}
