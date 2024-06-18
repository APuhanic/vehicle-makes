import 'package:flutter/material.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/vehicle_make_card.dart';

class VehicleMakesCardList extends StatelessWidget {
  const VehicleMakesCardList({
    super.key,
    required this.vehicleMakes,
  });

  final List<VehicleMake> vehicleMakes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: vehicleMakes.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) =>
          VehicleMakeCard(vehicleMake: vehicleMakes[index]),
    );
  }
}
