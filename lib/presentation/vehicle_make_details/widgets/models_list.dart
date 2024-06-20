import 'package:flutter/material.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/widgets/model_card.dart';

class ModelsList extends StatelessWidget {
  const ModelsList({
    super.key,
    required this.vehicleModels,
  });

  final List<VehicleModel> vehicleModels;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      itemCount: vehicleModels.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        childAspectRatio: 2,
      ),
      itemBuilder: (context, index) =>
          ModelCard(vehicleModel: vehicleModels[index]),
    );
  }
}
