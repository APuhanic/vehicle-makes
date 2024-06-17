import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';

class VehicleMakesRepository {
  final CarApi carApi;

  VehicleMakesRepository({required this.carApi});

  Future<List<VehicleMake>> getVehicleMakes() async {
    final response = await carApi.getMakes();
    final List<VehicleMake> vehicleMakes = [];
    for (var vehicleMake in response.data) {
      vehicleMakes.add(VehicleMake.fromJson(vehicleMake));
    }
    return vehicleMakes;
  }
}
