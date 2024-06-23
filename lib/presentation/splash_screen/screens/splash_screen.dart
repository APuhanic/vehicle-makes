import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/bloc/auth_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/constants/text_styles.dart';
import 'package:vehicle_makes/presentation/common/widgets/loading_indicator.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.read<AuthBloc>().add(const AuthEvent.login());
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.of(context).pushReplacementNamed('/vehicleMakes');
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: state.maybeWhen(
            orElse: () {
              return null;
            },
            loading: () => const Center(child: LoadingIndicator()),
            error: (message) => Center(
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: AppColors.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: const BorderSide(
                    color: AppColors.primary,
                    width: 1,
                  ),
                ),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.login());
                },
                child: Text(
                  'There was an error, try again',
                  style: AppTextStyle.lightText,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
