import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';
import 'package:vehicle_makes/domain/domain_models/trim_body/trim_body.dart';
import 'package:vehicle_makes/presentation/common/widgets/loading_indicator.dart';
import 'package:vehicle_makes/presentation/trim_details/bloc/trim_details_bloc.dart';

class TrimDetailsScreen extends StatelessWidget {
  const TrimDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final trimDetails = ModalRoute.of(context)!.settings.arguments as ModelTrim;
    context
        .read<TrimDetailsBloc>()
        .add(TrimDetailsEvent.fetchTrimDetails(trimDetails.id));
    return Scaffold(
      body: BlocBuilder<TrimDetailsBloc, TrimDetailsState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 40,
                pinned: true,
                backgroundColor: AppColors.background,
                shadowColor: Colors.transparent,
                surfaceTintColor: AppColors.background,
                title: Text(trimDetails.name),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: FittedBox(
                          child: Text(
                            trimDetails.description,
                            style: AppTextStyle.nameText,
                          ),
                        ),
                      ),
                    ),
                    state.maybeWhen(
                      loaded: (trimBody) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16),
                          child: TrimDetails(trimBody: trimBody),
                        );
                      },
                      empty: () => const Center(
                        child: Text('No models found'),
                      ),
                      error: (message) => Center(
                        child: Text(message),
                      ),
                      orElse: () => const Center(
                        child: LoadingIndicator(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TrimDetails extends StatelessWidget {
  const TrimDetails({
    super.key,
    required this.trimBody,
  });

  final TrimBody trimBody;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Body',
            style: AppTextStyle.titleSmall,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              _buildRow('Type', _formatValue(trimBody.type, '')),
              _buildRow('Doors', _formatValue(trimBody.doors, '')),
              _buildRow('Length', _formatValue(trimBody.length, '"')),
              _buildRow('Width', _formatValue(trimBody.width, '"')),
              _buildRow('Height', _formatValue(trimBody.height, '"')),
              _buildRow('Seats', _formatValue(trimBody.seats, '')),
              _buildRow('Wheel Base', _formatValue(trimBody.wheel_base, '"')),
              _buildRow('Front Track', _formatValue(trimBody.front_track, '')),
              _buildRow('Rear Track', _formatValue(trimBody.rear_track, '')),
              _buildRow('Ground Clearance',
                  _formatValue(trimBody.ground_clearance, '"')),
              _buildRow(
                  'Cargo Capacity', _formatValue(trimBody.cargo_capacity, '')),
              _buildRow('Max Cargo Capacity',
                  _formatValue(trimBody.max_cargo_capacity, '')),
              _buildRow(
                  'Curb Weight', _formatValue(trimBody.curb_weight, 'lbs')),
              _buildRow(
                  'Gross Weight', _formatValue(trimBody.gross_weight, 'lbs')),
              _buildRow(
                  'Max Payload', _formatValue(trimBody.max_payload, 'lbs')),
              _buildRow('Max Towing Capacity',
                  _formatValue(trimBody.max_towing_capacity, 'lbs')),
            ],
          ),
        ),
      ],
    );
  }

  String _formatValue(dynamic value, String unit) {
    return value != null ? '$value $unit' : 'Unknown';
  }

  Widget _buildRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Row(
        children: [
          Text(title, style: AppTextStyle.lightText),
          Expanded(child: Container()),
          Text(value, style: AppTextStyle.vehicleData),
        ],
      ),
    );
  }
}
