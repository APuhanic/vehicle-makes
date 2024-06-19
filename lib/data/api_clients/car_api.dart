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

  Future<Response> getMakes() async {
    return _dioClient.get(Endpoints.makes);
  }

  Future<Response> getModels(String makeId) async {
    return _dioClient.get('${Endpoints.models}/$makeId');
  }
}
