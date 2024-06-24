import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:vehicle_makes/domain/domain_models/model_trims/model_trims.dart';
import 'package:vehicle_makes/domain/domain_models/trim_body/trim_body.dart';

@LazySingleton()
class ModelTrimsRepository {
  ModelTrimsRepository({required this.carApi});
  final CarApi carApi;

  Future<List<ModelTrim>> getModelTrims(int modelId, {int? year}) async {
    final response = await carApi.getTrims(modelId, year);
    final List<ModelTrim> modelTrims = response.data['data']
        .map<ModelTrim>((modelTrim) => ModelTrim.fromJson(modelTrim))
        .toList();
    return modelTrims;
  }

  Future<TrimBody> getTrimBody(int trimId, {int? year}) async {
    final response = await carApi.getTrimBody(trimId, year);
    final trimBody = response.data['data'];
    return TrimBody.fromJson(trimBody[0] as Map<String, dynamic>);
  }
}
