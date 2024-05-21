import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vehicle_makes/data/constants/endpoints.dart';

@module
abstract class AppMopule {
  /*@singleton
  Connectivity get connectivity => Connectivity();*/

  @singleton
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: Endpoints.baseUrl,
        ),
      )..interceptors.add(PrettyDioLogger(
          error: true,
          compact: true,
          maxWidth: 90,
        ));
}
