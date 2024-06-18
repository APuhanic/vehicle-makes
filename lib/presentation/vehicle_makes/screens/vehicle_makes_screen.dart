import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/car_search_bar.dart';
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
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const CarSearchBar(),
                  const SizedBox(height: 16),
                  state.maybeWhen(
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
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
          );
        },
      ),
    );
  }
}
