import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';
import 'package:vehicle_makes/domain/repositories/vehicle_details_repository.dart';

part 'vehicle_models_event.dart';
part 'vehicle_models_state.dart';
part 'vehicle_models_bloc.freezed.dart';

@injectable
class VehicleModelsBloc extends Bloc<VehicleModelsEvent, VehicleModelsState> {
  VehicleModelsBloc(this._vehicleDetailsRepository) : super(const _Initial()) {
    on<_FetchVehicleModels>(_onFetchVehicleModels);
  }

  final VehicleDetailsRepository _vehicleDetailsRepository;

  Future<void> _onFetchVehicleModels(
      _FetchVehicleModels event, Emitter<VehicleModelsState> emit) async {
    emit(const VehicleModelsState.loading());
    try {
      final vehicleModels =
          await _vehicleDetailsRepository.getVehicleModels(event.makeId);
      emit(VehicleModelsState.loaded(vehicleModels));
    } catch (e) {
      emit(VehicleModelsState.error(e.toString()));
    }
  }
}
