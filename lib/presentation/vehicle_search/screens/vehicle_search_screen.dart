import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/presentation/common/widgets/loading_indicator.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/vehicle_makes_card_list.dart';
import 'package:vehicle_makes/presentation/vehicle_search/widgets/car_search_bar.dart';

class VehicleSearchScreen extends StatelessWidget {
  const VehicleSearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) => context
          .read<VehicleMakesBloc>()
          .add(const VehicleMakesEvent.fetchVehicleMakes()),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 40,
                pinned: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: const CarSearchBar(),
                leading: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          BlocBuilder<VehicleMakesBloc, VehicleMakesState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                  loading: () => const Center(
                                        child: LoadingIndicator(),
                                      ),
                                  loaded: (vehicleMakes) =>
                                      VehicleMakesCardList(
                                          vehicleMakes: vehicleMakes),
                                  empty: () =>
                                      const Text('No vehicle makes found'),
                                  orElse: () => const Text('Error'));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
