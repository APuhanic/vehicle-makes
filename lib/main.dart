import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:vehicle_makes/app.dart';
import 'package:vehicle_makes/di/dependency_injection.dart';
import 'package:vehicle_makes/domain/bloc_observer/global_bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies(Environment.dev);
  Bloc.observer = getIt<GlobalBlocObserver>();

  runApp(const CarApp());

  FlutterError.onError = (FlutterErrorDetails details) =>
      getIt<Logger>().e('Unhandled Flutter error: ${details.exception}');
}
