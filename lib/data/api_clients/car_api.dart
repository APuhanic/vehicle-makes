import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/dio_client.dart';
import 'package:vehicle_makes/data/constants/endpoints.dart';

@lazySingleton
class CarApi {
  CarApi(this._dioClient);
  final DioClient _dioClient;

  Future<Response> getMakes() async {
    return _dioClient.get(Endpoints.makes);
  }
}
