import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';
import 'package:vehicle_makes/domain/repositories/vehicle_makes_repository.dart';

part 'vehicle_makes_event.dart';
part 'vehicle_makes_state.dart';
part 'vehicle_makes_bloc.freezed.dart';

@injectable
class VehicleMakesBloc extends Bloc<VehicleMakesEvent, VehicleMakesState> {
  VehicleMakesBloc(this._vehicleMakesRepository) : super(const _Initial()) {
    on<_FetchVehicleMakes>(_onFetchVehiclesMakes);
    on<_FilterVehicleMakes>(_onFilterVehicleMakes);
    on<_SortVehicleMakes>(_onSortVehicleMakes);
  }

  final VehicleMakesRepository _vehicleMakesRepository;

  Future<void> _onFetchVehiclesMakes(
      VehicleMakesEvent event, Emitter<VehicleMakesState> emit) async {
    try {
      emit(const VehicleMakesState.loading());
      final vehicleMakes = await _vehicleMakesRepository.getVehicleMakes();

      emit(VehicleMakesState.loaded(vehicleMakes));
    } catch (e) {
      emit(VehicleMakesState.error(e.toString()));
    }
  }

  Future<void> _onFilterVehicleMakes(
      _FilterVehicleMakes event, Emitter<VehicleMakesState> emit) async {
    try {
      emit(const VehicleMakesState.loading());
      final vehicleMakes =
          await _vehicleMakesRepository.getVehicleMakes(query: event.query);
      emit(VehicleMakesState.loaded(vehicleMakes));
    } catch (e) {
      emit(VehicleMakesState.error(e.toString()));
    }
  }

  FutureOr<void> _onSortVehicleMakes(
      _SortVehicleMakes event, Emitter<VehicleMakesState> emit) {
    final currentState = state;
    if (currentState is _Loaded) {
      final sortedVehicleMakes =
          List<VehicleMake>.from(currentState.vehicleMakes);
      if (event.type == 'ascending') {
        sortedVehicleMakes.sort((a, b) => a.name.compareTo(b.name));
      } else {
        sortedVehicleMakes.sort((a, b) => b.name.compareTo(a.name));
      }

      emit(VehicleMakesState.loaded(sortedVehicleMakes));
    }
  }
}
