import 'package:flutter/material.dart';
import 'package:vehicle_makes/data/constants/app_colors.dart';

class WhiteInkWell extends StatelessWidget {
  const WhiteInkWell({super.key, required this.child, required this.onTap});

  final Widget child;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverDuration: const Duration(milliseconds: 100),
      borderRadius: BorderRadius.circular(8),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.white,
        ),
        child: child,
      ),
    );
  }
}
