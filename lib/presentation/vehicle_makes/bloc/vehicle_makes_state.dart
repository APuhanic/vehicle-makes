part of 'vehicle_makes_bloc.dart';

@freezed
class VehicleMakesState with _$VehicleMakesState {
  const factory VehicleMakesState.initial() = _Initial;
  const factory VehicleMakesState.loading() = _Loading;
  const factory VehicleMakesState.loaded(List<VehicleMake> vehicleMakes) =
      _Loaded;
  const factory VehicleMakesState.error(String message) = _Error;
}
