part of 'trim_details_bloc.dart';

@freezed
class TrimDetailsState with _$TrimDetailsState {
  const factory TrimDetailsState.initial() = _Initial;
  const factory TrimDetailsState.loading() = _Loading;
  const factory TrimDetailsState.loaded(TrimBody trimBody) = _Loaded;
  const factory TrimDetailsState.empty() = _Empty;
  const factory TrimDetailsState.error(String message) = _Error;
}
