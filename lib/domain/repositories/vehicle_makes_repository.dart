import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';

@LazySingleton()
class VehicleMakesRepository {
  final CarApi carApi;

  VehicleMakesRepository({required this.carApi});

  Future<List<VehicleMake>> getVehicleMakes({String? query}) async {
    final response = await carApi.getMakes(search: query);
    final List<dynamic> vehicleMakesList = response.data['data'];
    return vehicleMakesList
        .map((vehicleMake) =>
            VehicleMake.fromJson(vehicleMake as Map<String, dynamic>))
        .toList();
  }
}
