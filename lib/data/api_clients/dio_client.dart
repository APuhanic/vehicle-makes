import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioClient {
  final Dio _dio;

  DioClient(this._dio);

  Future<Response> post(String path, dynamic data) async => _dio.post(
        path,
        data: data,
      );
  Future<Response> get(String path) async => _dio.get(path);

  Future<Response> put(String path, dynamic data) async =>
      _dio.put(path, data: data);

  Future<Response> delete(String path) async =>
      _dio.delete(path, options: Options());

  Future<Response> patch(String path, dynamic data) async => _dio.patch(
        path,
        data: data,
      );
}
