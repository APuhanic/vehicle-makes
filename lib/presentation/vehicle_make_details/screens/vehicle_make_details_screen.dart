import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';
import 'package:vehicle_makes/presentation/common/widgets/loading_indicator.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/bloc/vehicle_details_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/cubit/filter_chip_cubit.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/widgets/filter_chips.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/widgets/models_list.dart';

class VehicleMakeDetailsScreen extends StatelessWidget {
  const VehicleMakeDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final makeDetails =
        ModalRoute.of(context)!.settings.arguments as VehicleMake;
    context
        .read<VehicleDetailsBloc>()
        .add(VehicleModelsEvent.fetchVehicleModels(makeDetails.id));
    return Scaffold(
      body: BlocListener<FilterChipCubit, FilterChipState>(
        listener: (context, state) {
          state.maybeWhen(
            selected: (selectedYear) {
              context.read<VehicleDetailsBloc>().add(
                  VehicleModelsEvent.filterVehicleModels(
                      makeDetails.id, selectedYear));
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<VehicleDetailsBloc, VehicleDetailsState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 40,
                  pinned: true,
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text(makeDetails.name),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const FilterChips(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Text(
                          'Models',
                          style: AppTextStyle.nameText,
                        ),
                      ),
                      state.maybeWhen(
                        loaded: (vehicleModels) {
                          return ModelsList(
                            vehicleModels: vehicleModels,
                          );
                        },
                        empty: () => const Center(
                          child: Text('No models found'),
                        ),
                        error: (message) => const Center(
                          child: Text('There was an error fetching models'),
                        ),
                        orElse: () => const Center(
                          child: LoadingIndicator(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
