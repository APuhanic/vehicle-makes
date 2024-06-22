part of 'model_trims_bloc.dart';

@freezed
class ModelTrimsEvent with _$ModelTrimsEvent {
  const factory ModelTrimsEvent.fetchModelTrims(int modelId) = _FetchModelTrims;
  const factory ModelTrimsEvent.filterModelTrims(int modelId, int year) =
      _FilterModelTrims;
}
