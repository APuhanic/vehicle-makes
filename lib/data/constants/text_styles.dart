import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';

class AppTextStyle {
  static TextStyle header = const TextStyle(
    fontSize: 30,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle grayText = const TextStyle(
    fontSize: 16,
    color: AppColors.grayText,
    fontWeight: FontWeight.w100,
  );

  static TextStyle lightText = const TextStyle(
    fontSize: 16,
    color: AppColors.grayText,
    fontWeight: FontWeight.w100,
  );

  static TextStyle button = const TextStyle(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.normal,
  );

  static TextStyle titleLarge = const TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle titleSmall = const TextStyle(
    fontSize: 16,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );

  static TextStyle nameText = const TextStyle(
    fontSize: 16,
    color: AppColors.black,
  );

  static TextStyle vehicleData = const TextStyle(
    fontSize: 14,
    color: AppColors.black,
    fontWeight: FontWeight.bold,
  );
}
