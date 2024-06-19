import 'package:vehicle_makes/presentation/splash_screen/screens/splash_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/screens/vehicle_make_details_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/screens/vehicle_makes_screen.dart';

var routes = {
  '/': (context) => const SplashScreen(),
  '/vehicleMakes': (context) => const VehicleMakesScreen(),
  '/vehicleMakeDetails': (context) => const VehicleMakeDetailsScreen(),
};
