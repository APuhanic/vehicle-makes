import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';

@LazySingleton()
class ModelTrimsRepository {
  ModelTrimsRepository({required this.carApi});
  final CarApi carApi;

  Future<List<ModelTrim>> getModelTrims(int modelId, {int? year}) async {
    final response = await carApi.getTrims(modelId, year);
    return _parseResponse(response);
  }

  List<ModelTrim> _parseResponse(dynamic response) {
    final data = response.data as Map<String, dynamic>;
    final List<dynamic> modelTrimsList = data['data'];
    return modelTrimsList
        .map((model) => ModelTrim.fromJson(model as Map<String, dynamic>))
        .toList();
  }
}
