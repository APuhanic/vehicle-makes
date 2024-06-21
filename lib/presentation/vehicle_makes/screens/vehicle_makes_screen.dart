import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/presentation/common/widgets/loading_indicator.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/vehicle_makes_card_list.dart';

class VehicleMakesScreen extends StatelessWidget {
  const VehicleMakesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context
        .read<VehicleMakesBloc>()
        .add(const VehicleMakesEvent.fetchVehicleMakes());

    return Scaffold(
      body: BlocBuilder<VehicleMakesBloc, VehicleMakesState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 40,
                pinned: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: const Text('Vehicle Makes'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/vehicleSearch');
                      },
                      icon: const Icon(Icons.search))
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          state.maybeWhen(
                            loading: () => const Center(
                              child: LoadingIndicator(),
                            ),
                            loaded: (vehicleMakes) => VehicleMakesCardList(
                              vehicleMakes: vehicleMakes,
                            ),
                            error: (message) => Center(
                              child: Text(message),
                            ),
                            orElse: () => const Text('Error'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
