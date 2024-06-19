part of 'vehicle_models_bloc.dart';

@freezed
class VehicleModelsEvent with _$VehicleModelsEvent {
  const factory VehicleModelsEvent.fetchVehicleModels(makeId) =
      _FetchVehicleModels;
}
