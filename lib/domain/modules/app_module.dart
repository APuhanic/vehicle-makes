import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vehicle_makes/data/constants/endpoints.dart';

@module
abstract class AppMopule {
  @singleton
  Dio get dio => Dio(
        BaseOptions(baseUrl: Endpoints.baseUrl),
      )..interceptors.add(
          PrettyDioLogger(
            error: true,
            compact: true,
            maxWidth: 90,
          ),
        );
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
