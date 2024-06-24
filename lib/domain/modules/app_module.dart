import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vehicle_makes/data/constants/endpoints.dart';
import 'package:vehicle_makes/data/interceptors/auth_interceptor.dart';

@module
abstract class AppMopule {
  @singleton
  Dio dio(AuthInterceptor authInterceptor) {
    final dio = Dio(BaseOptions(baseUrl: Endpoints.baseUrl));
    dio.interceptors.add(authInterceptor);
    dio.interceptors.add(
      PrettyDioLogger(
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
    return dio;
  }

  @singleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();

  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 5,
          lineLength: 50,
          colors: true,
          printEmojis: true,
          printTime: false,
        ),
      );
}
