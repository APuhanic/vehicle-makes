import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';

class ModelTrimCard extends StatelessWidget {
  const ModelTrimCard({
    super.key,
    required this.modelTrim,
  });

  final ModelTrim modelTrim;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name: ${modelTrim.name}",
            style: AppTextStyle.titleSmall,
          ),
          Text(
            "Desciption: ${modelTrim.description}",
            style: AppTextStyle.lightText,
          ),
          Text(
            modelTrim.invoice.toString(),
            style: AppTextStyle.titleSmall,
          ),
          Text(
            modelTrim.msrp.toString(),
            style: AppTextStyle.titleSmall,
          ),
        ],
      ),
    );
  }
}
