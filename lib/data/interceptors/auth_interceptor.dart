import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vehicle_makes/data/storage/secure_storage.dart';

@singleton
class AuthInterceptor extends Interceptor {
  final SecureStorage secureStorage;

  AuthInterceptor(this.secureStorage);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = await secureStorage.readSecureData('token');
    options.headers['Authorization'] = 'Bearer $token';
    super.onRequest(options, handler);
  }
}
