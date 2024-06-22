import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';
import 'package:vehicle_makes/domain/repositories/vehicle_details_repository.dart';

part 'vehicle_details_event.dart';
part 'vehicle_details_state.dart';
part 'vehicle_details_bloc.freezed.dart';

@injectable
class VehicleDetailsBloc extends Bloc<VehicleModelsEvent, VehicleDetailsState> {
  VehicleDetailsBloc(this._vehicleDetailsRepository) : super(const _Initial()) {
    on<_FetchVehicleModels>(_onFetchVehicleModels);
    on<_FilterVehicleModels>(_onFilterVehicleModels);
  }

  final VehicleDetailsRepository _vehicleDetailsRepository;

  Future<void> _onFetchVehicleModels(
      _FetchVehicleModels event, Emitter<VehicleDetailsState> emit) async {
    emit(const VehicleDetailsState.loading());
    try {
      final vehicleModels =
          await _vehicleDetailsRepository.getVehicleModels(event.makeId);
      if (vehicleModels.isEmpty) {
        emit(const VehicleDetailsState.empty());
      } else {
        emit(VehicleDetailsState.loaded(vehicleModels));
      }
    } catch (e) {
      emit(VehicleDetailsState.error(e.toString()));
    }
  }

  Future<FutureOr<void>> _onFilterVehicleModels(
      _FilterVehicleModels event, Emitter<VehicleDetailsState> emit) async {
    emit(const VehicleDetailsState.loading());
    try {
      final vehicleModels = await _vehicleDetailsRepository
          .getVehicleModels(event.makeId, year: event.year);
      if (vehicleModels.isEmpty) {
        emit(const VehicleDetailsState.empty());
      } else {
        emit(VehicleDetailsState.loaded(vehicleModels));
      }
    } catch (e) {
      emit(VehicleDetailsState.error(e.toString()));
    }
  }
}
