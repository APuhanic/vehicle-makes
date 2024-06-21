part of 'vehicle_makes_bloc.dart';

@freezed
class VehicleMakesEvent with _$VehicleMakesEvent {
  const factory VehicleMakesEvent.fetchVehicleMakes() = _FetchVehicleMakes;
  const factory VehicleMakesEvent.filterVehicleMakes(String query) =
      _FilterVehicleMakes;
}
