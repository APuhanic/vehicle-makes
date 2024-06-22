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
            _TrimInfoRow(
              'Invoice',
              '${modelTrim.invoice} \$',
            ),
            _TrimInfoRow(
              'Retail Price',
              "${modelTrim.msrp} \$",
            ),
            _TrimInfoRow(
              'Year',
              '${modelTrim.year}',
            ),
          ],
        ),
      ),
    );
  }
}

class _TrimInfoRow extends StatelessWidget {
  const _TrimInfoRow(this.rowInfoTitle, this.rowData);

  final String rowInfoTitle;
  final String rowData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rowInfoTitle,
          style: AppTextStyle.grayText,
        ),
        Expanded(child: Container()),
        Text(
          rowData,
          style: AppTextStyle.vehicleData,
        ),
      ],
    );
  }
}
