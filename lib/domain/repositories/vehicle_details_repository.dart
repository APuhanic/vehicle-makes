import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';

@LazySingleton()
class VehicleDetailsRepository {
  VehicleDetailsRepository({required this.carApi});
  final CarApi carApi;

  Future<List<VehicleModel>> getVehicleModels(int makeId) async {
    final response = await carApi.getModels(makeId);
    final data = response.data as Map<String, dynamic>;
    final List<dynamic> vehicleMakesList = data['data'];
    return vehicleMakesList
        .map(
            (vehicle) => VehicleModel.fromJson(vehicle as Map<String, dynamic>))
        .toList();
  }
}