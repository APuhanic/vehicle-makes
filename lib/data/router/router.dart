import 'package:vehicle_makes/presentation/model_trim/screens/model_trim_details.dart';
import 'package:vehicle_makes/presentation/splash_screen/screens/splash_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/screens/vehicle_make_details_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/screens/vehicle_makes_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_search/screens/vehicle_search_screen.dart';

// TODO: Implement GoRouter?

var routes = {
  '/': (context) => const SplashScreen(),
  '/vehicleMakes': (context) => const VehicleMakesScreen(),
  '/vehicleMakeDetails': (context) => const VehicleMakeDetailsScreen(),
  '/vehicleSearch': (context) => const VehicleSearchScreen(),
  '/modelTrims': (context) => const ModelTrimsScreen(),
};
