import 'package:flutter/material.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/widgets/vehicle_make_card.dart';

class VehicleMakesCardList extends StatelessWidget {
  const VehicleMakesCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) => const VehicleMakeCard(),
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
