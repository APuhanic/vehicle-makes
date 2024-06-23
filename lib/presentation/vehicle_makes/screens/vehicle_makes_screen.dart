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
                expandedHeight: 45,
                pinned: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: const Text('Vehicle Makes'),
                actions: [
                  const _SortButton(),
                  IconButton(
                      onPressed: () async {
                        await Future.delayed(const Duration(milliseconds: 150));
                        if (!context.mounted) return;
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
                            error: (message) => const Center(
                              child: Text('There was an error fetching data'),
                            ),
                            orElse: () => const SizedBox(),
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

class _SortButton extends StatelessWidget {
  const _SortButton();

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        dropdownColor: AppColors.background,
        elevation: 1,
        underline: const SizedBox(),
        borderRadius: BorderRadius.circular(8),
        onChanged: (String? value) {
          context
              .read<VehicleMakesBloc>()
              .add(VehicleMakesEvent.sortVehicleMakes(value ?? 'ascending'));
        },
        items: const [
          DropdownMenuItem(
            value: 'ascending',
            child: Text('A-Z'),
          ),
          DropdownMenuItem(
            value: 'descending',
            child: Text('Z-A'),
          ),
        ],
        icon:
            const Icon(Icons.sort_by_alpha_rounded, color: AppColors.primary));
  }
}
