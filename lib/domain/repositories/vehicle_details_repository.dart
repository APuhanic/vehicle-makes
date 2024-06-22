import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/vehicle_model/vehicle_model.dart';

@LazySingleton()
class VehicleDetailsRepository {
  VehicleDetailsRepository({required this.carApi});
  final CarApi carApi;

  Future<List<VehicleModel>> getVehicleModels(int makeId, {int? year}) async {
    final response = await carApi.getModels(makeId, year);
    return _parseResponse(response);
  }

  List<VehicleModel> _parseResponse(dynamic response) {
    final data = response.data as Map<String, dynamic>;
    final List<dynamic> vehicleModelsList = data['data'];
    return vehicleModelsList
        .map((model) => VehicleModel.fromJson(model as Map<String, dynamic>))
        .toList();
  }
}
