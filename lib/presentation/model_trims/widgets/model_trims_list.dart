import 'package:flutter/material.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';
import 'package:vehicle_makes/presentation/model_trims/widgets/model_trim_card.dart';

class ModelTrimsList extends StatelessWidget {
  const ModelTrimsList({
    super.key,
    required this.modelTrims,
  });

  final List<ModelTrim> modelTrims;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      itemCount: modelTrims.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const SizedBox(height: 8),
      itemBuilder: (context, index) =>
          ModelTrimCard(modelTrim: modelTrims[index]),
    );
  }
}
