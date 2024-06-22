import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';
import 'package:vehicle_makes/domain/repositories/model_trims_repository.dart';

part 'model_trims_event.dart';
part 'model_trims_state.dart';
part 'model_trims_bloc.freezed.dart';

@injectable
class ModelTrimsBloc extends Bloc<ModelTrimsEvent, ModelTrimsState> {
  ModelTrimsBloc(this._modelTrimsRepository) : super(const _Initial()) {
    on<_FetchModelTrims>(_onFetchModelTrims);
    on<_FilterModelTrims>(_onFilterModelTrims);
  }

  final ModelTrimsRepository _modelTrimsRepository;

  Future<void> _onFetchModelTrims(
      _FetchModelTrims event, Emitter<ModelTrimsState> emit) async {
    emit(const ModelTrimsState.loading());
    try {
      final modelTrims =
          await _modelTrimsRepository.getModelTrims(event.modelId);
      if (modelTrims.isEmpty) {
        emit(const ModelTrimsState.empty());
      } else {
        emit(ModelTrimsState.loaded(modelTrims));
      }
    } catch (e) {
      emit(ModelTrimsState.error(e.toString()));
    }
  }

  Future<void> _onFilterModelTrims(
      _FilterModelTrims event, Emitter<ModelTrimsState> emit) async {
    emit(const ModelTrimsState.loading());
    try {
      final modelTrims = await _modelTrimsRepository
          .getModelTrims(event.modelId, year: event.year);
      if (modelTrims.isEmpty) {
        emit(const ModelTrimsState.empty());
      } else {
        emit(ModelTrimsState.loaded(modelTrims));
      }
    } catch (e) {
      emit(ModelTrimsState.error(e.toString()));
    }
  }
}
