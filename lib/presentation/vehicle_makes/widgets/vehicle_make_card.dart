import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';

class VehicleMakeCard extends StatelessWidget {
  const VehicleMakeCard({
    super.key,
    required this.vehicleMake,
  });

  final VehicleMake vehicleMake;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            vehicleMake.id.toString(),
            style: AppTextStyle.titleSmall,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              vehicleMake.name,
              style: AppTextStyle.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
