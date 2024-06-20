part of 'vehicle_details_bloc.dart';

@freezed
class VehicleDetailsState with _$VehicleDetailsState {
  const factory VehicleDetailsState.initial() = _Initial;
  const factory VehicleDetailsState.loading() = _Loading;
  const factory VehicleDetailsState.loaded(List<VehicleModel> vehicleModels) =
      _Loaded;
  const factory VehicleDetailsState.empty() = _Empty;
  const factory VehicleDetailsState.error(String message) = _Error;
}
