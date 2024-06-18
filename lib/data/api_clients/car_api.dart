import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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

  Future<Response> login(apiToken, apiSecret) async {
    debugPrint(apiToken);
    debugPrint(apiSecret);
    return _dioClient.post(
      Endpoints.login,
      {
        'api_token': apiToken,
        'api_secret': apiSecret,
      },
    );
  }
}
