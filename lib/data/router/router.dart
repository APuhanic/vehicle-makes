import 'package:vehicle_makes/presentation/splash_screen/screens/splash_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/screens/vehicle_makes_screens.dart';

var routes = {
  '/': (context) => const SplashScreen(),
  '/vehicleMakes': (context) => const VehicleMakesScreen(),
};
