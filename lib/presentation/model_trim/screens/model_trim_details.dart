import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';
import 'package:vehicle_makes/presentation/common/widgets/loading_indicator.dart';
import 'package:vehicle_makes/presentation/model_trim/bloc/model_trims_bloc.dart';
import 'package:vehicle_makes/presentation/model_trim/widgets/model_trims_list.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/cubit/filter_chip_cubit.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/widgets/filter_chips.dart';

class ModelTrimsScreen extends StatelessWidget {
  const ModelTrimsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final modelDetails =
        ModalRoute.of(context)!.settings.arguments as VehicleModel;
    context
        .read<ModelTrimsBloc>()
        .add(ModelTrimsEvent.fetchModelTrims(modelDetails.id));

    return Scaffold(
      body: BlocListener<FilterChipCubit, FilterChipState>(
        listener: (context, state) {
          state.maybeWhen(
            selected: (selectedYear) {
              debugPrint('Selected year: $selectedYear');
              context.read<ModelTrimsBloc>().add(
                  ModelTrimsEvent.filterModelTrims(
                      modelDetails.id, selectedYear));
            },
            orElse: () {},
          );
        },
        child: BlocBuilder<ModelTrimsBloc, ModelTrimsState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 40,
                  pinned: true,
                  backgroundColor: AppColors.background,
                  shadowColor: Colors.transparent,
                  surfaceTintColor: AppColors.background,
                  title: Text(
                    'Trims for ${modelDetails.name}',
                    style: AppTextStyle.titleSmall,
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const FilterChips(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: Text(
                          'Trims',
                          style: AppTextStyle.nameText,
                        ),
                      ),
                      state.maybeWhen(
                        loaded: (modelTrims) {
                          return ModelTrimsList(modelTrims: modelTrims);
                        },
                        empty: () => const Center(
                          child: Text('No trims for this model found'),
                        ),
                        error: (message) => const Center(
                          child: Text('There was an error fetching models'),
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
      ),
    );
  }
}
