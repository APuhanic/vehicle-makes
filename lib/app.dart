import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vehicle_makes/data/bloc/auth_bloc.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/data/router/router.dart';
import 'package:vehicle_makes/di/dependency_injection.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/bloc/vehicle_details_bloc.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/cubit/filter_chip_cubit.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart';

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.background,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: AppColors.white,
    ));
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()),
        BlocProvider(create: (context) => getIt<VehicleMakesBloc>()),
        BlocProvider(create: (context) => getIt<VehicleDetailsBloc>()),
        BlocProvider(create: (context) => getIt<FilterChipCubit>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vehicle Makes and Models',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.background,
          fontFamily: 'Poppins',
        ),
        builder: (context, child) => SafeArea(child: child!),
        routes: routes,
        initialRoute: '/',
      ),
    );
  }
}
