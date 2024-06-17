import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/screens/vehicle_makes_screens.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vehicle Makes and Models',
      home: const VehicleMakesScreen(),
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Poppins',
      ),
      builder: (context, child) => SafeArea(child: child!),
    );
  }
}
