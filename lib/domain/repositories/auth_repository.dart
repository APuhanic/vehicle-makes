import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@singleton
class AuthRepository {
  AuthRepository({required this.carApi});
  final CarApi carApi;

  Future<String> login() async {
    await dotenv.load();
    try {
      final response = await carApi.login(
        dotenv.env['API_TOKEN'],
        dotenv.env['API_SECRET'],
      );
      return response.data;
    } catch (e) {
      throw Exception(e);
    }
  }
}
