import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';

@LazySingleton()
class VehicleMakesRepository {
  final CarApi carApi;

  VehicleMakesRepository({required this.carApi});

  Future<List<VehicleMake>> getVehicleMakes() async {
    final response = await carApi.getMakes();

    // Assuming the response.data is a map that contains the "data" list
    final data = response.data as Map<String, dynamic>;

    // Extract the list of vehicle makes from the "data" field
    final List<dynamic> vehicleMakesList = data['data'];

    // Map each item in the list to a VehicleMake object
    return vehicleMakesList
        .map((e) => VehicleMake.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
