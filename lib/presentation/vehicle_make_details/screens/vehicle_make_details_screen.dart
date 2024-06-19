import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/bloc/vehicle_models_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart';

class VehicleMakeDetailsScreen extends StatelessWidget {
  const VehicleMakeDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final makeDetails =
        ModalRoute.of(context)!.settings.arguments as VehicleMake;
    context
        .read<VehicleModelsBloc>()
        .add(VehicleModelsEvent.fetchVehicleModels(makeDetails.id));
    return Scaffold(
      body: BlocBuilder<VehicleMakesBloc, VehicleMakesState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              const SliverAppBar(
                expandedHeight: 40,
                floating: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    ListTile(
                      title: const Text('Id'),
                      subtitle: Text(makeDetails.id.toString()),
                    ),
                    ListTile(
                      title: const Text('Name'),
                      subtitle: Text(makeDetails.name),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            makeDetails.id.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            makeDetails.name,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
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
