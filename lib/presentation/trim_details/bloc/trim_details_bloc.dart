import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/domain/domain_models/trim_body/trim_body.dart';
import 'package:vehicle_makes/domain/repositories/model_trims_repository.dart';

part 'trim_details_event.dart';
part 'trim_details_state.dart';
part 'trim_details_bloc.freezed.dart';

@injectable
class TrimDetailsBloc extends Bloc<TrimDetailsEvent, TrimDetailsState> {
  TrimDetailsBloc(this._modelTrimsRepository) : super(const _Initial()) {
    on<_FetchTrimDetails>(_fetchTrimDetails);
  }

  final ModelTrimsRepository _modelTrimsRepository;

  Future<void> _fetchTrimDetails(
      _FetchTrimDetails event, Emitter<TrimDetailsState> emit) async {
    emit(const TrimDetailsState.loading());
    try {
      final trimBody = await _modelTrimsRepository.getTrimBody(event.trimId);
      emit(TrimDetailsState.loaded(trimBody));
    } catch (e) {
      throw Exception(e);
    }
  }
}
