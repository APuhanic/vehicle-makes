import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
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
                    Center(child: Text(trimDetails.description)),
                    state.maybeWhen(
                      loaded: (trimBody) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
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
      children: [
        Row(
          children: [
            const Text('Type'),
            Expanded(child: Container()),
            Text(trimBody.type ?? 'Unknown'),
          ],
        ),
        Text(trimBody.doors?.toString() ?? 'Unknown'),
        Text(trimBody.length ?? 'Unknown'),
        Text(trimBody.width ?? 'Unknown'),
        Text(trimBody.height ?? 'Unknown'),
        Text(trimBody.seats?.toString() ?? 'Unknown'),
        Text(trimBody.wheel_base?.toString() ?? 'Unknown'),
        Text(trimBody.front_track ?? 'Unknown'),
        Text(trimBody.rear_track ?? 'Unknown'),
        Text(trimBody.ground_clearance ?? 'Unknown'),
        Text(trimBody.cargo_capacity ?? 'Unknown'),
        Text(trimBody.max_cargo_capacity ?? 'Unknown'),
        Text(trimBody.curb_weight?.toString() ?? 'Unknown'),
        Text(trimBody.gross_weight?.toString() ?? 'Unknown'),
        Text(trimBody.max_payload?.toString() ?? 'Unknown'),
        Text(trimBody.max_towing_capacity?.toString() ?? 'Unknown'),
      ],
    );
  }
}
