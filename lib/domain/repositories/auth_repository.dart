import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/api_clients/car_api.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vehicle_makes/data/storage/secure_storage.dart';

@singleton
class AuthRepository {
  AuthRepository(this.storage, this.carApi);
  final CarApi carApi;
  final SecureStorage storage;

  Future<void> login() async {
    await dotenv.load();
    try {
      final response = await carApi.login(
        dotenv.env['API_TOKEN'],
        dotenv.env['API_SECRET'],
      );
      storage.writeSecureData('token', response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
