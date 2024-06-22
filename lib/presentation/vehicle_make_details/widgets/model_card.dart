import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';
import 'package:vehicle_makes/presentation/common/widgets/global_inkwell.dart';

class ModelCard extends StatelessWidget {
  const ModelCard({
    super.key,
    required this.vehicleModel,
  });

  final VehicleModel vehicleModel;

  @override
  Widget build(BuildContext context) {
    return WhiteInkWell(
      onTap: () async {
        await Future.delayed(const Duration(milliseconds: 150));
        if (!context.mounted) return;
        Navigator.of(context).pushNamed(
          '/modelTrims',
          arguments: vehicleModel,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Center(
          child: Text(
            vehicleModel.name,
            style: AppTextStyle.titleSmall,
          ),
        ),
      ),
    );
  }
}
