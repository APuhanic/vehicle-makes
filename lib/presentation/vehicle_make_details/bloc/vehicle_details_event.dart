part of 'vehicle_details_bloc.dart';

@freezed
class VehicleModelsEvent with _$VehicleModelsEvent {
  const factory VehicleModelsEvent.fetchVehicleModels(makeId) =
      _FetchVehicleModels;
  const factory VehicleModelsEvent.filterVehicleModels(makeId, int year) =
      _FilterVehicleModels;
}
