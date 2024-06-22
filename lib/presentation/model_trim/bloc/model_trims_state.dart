part of 'model_trims_bloc.dart';

@freezed
class ModelTrimsState with _$ModelTrimsState {
  const factory ModelTrimsState.initial() = _Initial;
  const factory ModelTrimsState.loading() = _Loading;
  const factory ModelTrimsState.loaded(List<ModelTrim> modelTrims) = _Loaded;
  const factory ModelTrimsState.empty() = _Empty;
  const factory ModelTrimsState.error(String message) = _Error;
}
