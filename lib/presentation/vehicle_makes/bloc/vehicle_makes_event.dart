part of 'vehicle_makes_bloc.dart';

@freezed
class VehicleMakesEvent with _$VehicleMakesEvent {
  const factory VehicleMakesEvent.fetchVehicleMakes() = _FetchVehicleMakes;
}
