import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_make/vehicle_make.dart';

@LazySingleton()
class VehicleMakesRepository {
  final CarApi carApi;

  VehicleMakesRepository({required this.carApi});

  Future<List<VehicleMake>> getVehicleMakes() async {
    final response = await carApi.getMakes();
    return _parseResponse(response);
  }

  Future<List<VehicleMake>> searchVehicleMakes(String query) async {
    final response = await carApi.getMakes(search: query);
    return _parseResponse(response);
  }

  List<VehicleMake> _parseResponse(dynamic response) {
    final data = response.data as Map<String, dynamic>;
    final List<dynamic> vehicleMakesList = data['data'];
    return vehicleMakesList
        .map((vehicle) => VehicleMake.fromJson(vehicle as Map<String, dynamic>))
        .toList();
  }
}
