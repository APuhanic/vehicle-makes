import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';
import 'package:vehicle_makes/presentation/common/widgets/global_inkwell.dart';

class ModelTrimCard extends StatelessWidget {
  const ModelTrimCard({
    super.key,
    required this.modelTrim,
  });

  final ModelTrim modelTrim;

  @override
  Widget build(BuildContext context) {
    return WhiteInkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          '/trimDetails',
          arguments: modelTrim,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              modelTrim.name,
              style: AppTextStyle.titleSmall,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(modelTrim.description),
            ),
            _buildTrimInfoRow(
              'Invoice',
              '${modelTrim.invoice} \$',
            ),
            _buildTrimInfoRow(
              'Retail Price',
              "${modelTrim.msrp} \$",
            ),
            _buildTrimInfoRow(
              'Year',
              '${modelTrim.year}',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrimInfoRow(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.lightText,
        ),
        Text(
          value,
          style: AppTextStyle.vehicleData,
        ),
      ],
    );
  }
}
