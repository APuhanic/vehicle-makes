import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/dio_client.dart';
import 'package:vehicle_makes/data/constants/endpoints.dart';

@lazySingleton
class CarApi {
  CarApi(this._dioClient);
  final DioClient _dioClient;

  Future<Response> login(apiToken, apiSecret) async {
    return _dioClient.post(
      Endpoints.login,
      {
        'api_token': apiToken,
        'api_secret': apiSecret,
      },
    );
  }

  Future<Response> getMakes({String? search}) async {
    if (search != null) {
      return _dioClient.get(Endpoints.makes, queryParameters: {'make': search});
    }
    return _dioClient.get(Endpoints.makes);
  }

  // Car API je limitiran i neprihvaća JSON query zahtjeve točno, stoga je po
  // potrebno napraviti workaround kako bi se dobili podaci koji su potrebni.
  // Trenutno je postavljeno da je godina proizvodnje 2015, te se ručno mijenja
  // tražena godina kroz interface
  Future<Response> getModels(makeId, int? year) async {
    final queryParameters = {
      'make_id': makeId,
      'year': year ?? 2015,
    };
    return _dioClient.get(Endpoints.models, queryParameters: queryParameters);
  }

  Future<Response> getTrims(makeModelId, int? year) async {
    final queryParameters = {
      'make_model_id': makeModelId,
      'year': year ?? 2015,
    };
    return _dioClient.get(Endpoints.trims, queryParameters: queryParameters);
  }

  Future<Response> getTrimBody(trimId, int? year) async {
    final queryParameters = {
      'make_model_trim_id': trimId,
    };
    return _dioClient.get(Endpoints.trimBodies,
        queryParameters: queryParameters);
  }
}
