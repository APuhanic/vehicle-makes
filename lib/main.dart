import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/app.dart';
import 'package:vehicle_makes/di/dependency_injection.dart';

void main() {
  configureDependencies(Environment.dev);

  runApp(const CarApp());
}
