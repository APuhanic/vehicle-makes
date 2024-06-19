part of 'vehicle_models_bloc.dart';

@freezed
class VehicleModelsState with _$VehicleModelsState {
  const factory VehicleModelsState.initial() = _Initial;
  const factory VehicleModelsState.loading() = _Loading;
  const factory VehicleModelsState.loaded(List<VehicleModel> vehicleModels) =
      _Loaded;
  const factory VehicleModelsState.error(String message) = _Error;
}
