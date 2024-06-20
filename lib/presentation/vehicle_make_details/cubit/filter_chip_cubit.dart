import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'filter_chip_state.dart';
part 'filter_chip_cubit.freezed.dart';

@injectable
class FilterChipCubit extends Cubit<FilterChipState> {
  FilterChipCubit() : super(const FilterChipState.initial());

  void selectYear(int year) => emit(FilterChipState.selected(year));
}
