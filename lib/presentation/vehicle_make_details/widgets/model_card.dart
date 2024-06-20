import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';

class ModelCard extends StatelessWidget {
  const ModelCard({
    super.key,
    required this.vehicleModel,
  });

  final VehicleModel vehicleModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Center(
        child: Text(
          vehicleModel.name,
          style: AppTextStyle.titleSmall,
        ),
      ),
    );
  }
}
