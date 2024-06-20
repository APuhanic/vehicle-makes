import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/cubit/filter_chip_cubit.dart';

const List<int> years = [2015, 2016, 2017, 2018, 2019, 2020];

class FilterChips extends StatelessWidget {
  const FilterChips({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: years.length,
              separatorBuilder: (context, index) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                final year = years[index];
                return BlocBuilder<FilterChipCubit, FilterChipState>(
                  builder: (context, state) {
                    final isSelected = state.maybeWhen(
                      selected: (selectedYear) => selectedYear == year,
                      orElse: () => false,
                    );
                    return FilterChip(
                      label: Text(
                        year.toString(),
                        style: isSelected
                            ? AppTextStyle.lightText
                                .copyWith(color: AppColors.white)
                            : AppTextStyle.lightText,
                      ),
                      showCheckmark: false,
                      selected: isSelected,
                      backgroundColor:
                          isSelected ? AppColors.primary : AppColors.background,
                      side: BorderSide(
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.grayText),
                      selectedColor: AppColors.primary,
                      onSelected: (value) {
                        context.read<FilterChipCubit>().selectYear(year);
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
