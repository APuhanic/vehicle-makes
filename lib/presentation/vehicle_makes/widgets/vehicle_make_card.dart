import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';

class VehicleMakeCard extends StatelessWidget {
  const VehicleMakeCard({
    super.key,
  });

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vehicle id',
            style: AppTextStyle.titleSmall,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Vehicle Make',
              style: AppTextStyle.titleSmall,
            ),
          ),
          Text(
            'Vehicle Abrv',
            style: AppTextStyle.titleSmall,
          ),
        ],
      ),
    );
  }
}
