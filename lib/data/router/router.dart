import 'package:vehicle_makes/data/constants/route_paths.dart';
import 'package:vehicle_makes/presentation/model_trims/screens/model_trims_screen.dart';
import 'package:vehicle_makes/presentation/splash_screen/screens/splash_screen.dart';
import 'package:vehicle_makes/presentation/trim_details/screens/trim_details_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_make_details/screens/vehicle_make_details_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_makes/screens/vehicle_makes_screen.dart';
import 'package:vehicle_makes/presentation/vehicle_search/screens/vehicle_search_screen.dart';

// TODO: Implement GoRouter?

var routes = {
  '/': (context) => const SplashScreen(),
  RoutePaths.vehicleMakes: (context) => const VehicleMakesScreen(),
  RoutePaths.vehicleMakesDetails: (context) => const VehicleMakeDetailsScreen(),
  RoutePaths.vehicleSearch: (context) => const VehicleSearchScreen(),
  RoutePaths.modelTrims: (context) => const ModelTrimsScreen(),
  RoutePaths.trimDetails: (context) => const TrimDetailsScreen(),
};
