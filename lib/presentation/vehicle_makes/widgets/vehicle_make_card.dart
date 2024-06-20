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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/vehicleMakeDetails',
          arguments: vehicleMake,
        );
      },
      child: Container(
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
            const SizedBox(width: 16),
            Text(
              vehicleMake.name,
              style: AppTextStyle.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
