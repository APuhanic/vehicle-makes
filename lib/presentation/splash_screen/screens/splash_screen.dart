import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/bloc/auth_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';

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
        // TODO: Implement login error handling
      },
      builder: (context, state) {
        return const Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            ),
          ),
        );
      },
    );
  }
}
