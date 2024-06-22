part of 'trim_details_bloc.dart';

@freezed
class TrimDetailsEvent with _$TrimDetailsEvent {
  const factory TrimDetailsEvent.fetchTrimDetails(int trimId) =
      _FetchTrimDetails;
}
