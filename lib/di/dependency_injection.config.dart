// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/api_clients/car_api.dart' as _i5;
import '../data/api_clients/dio_client.dart' as _i4;
import '../domain/modules/app_module.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appMopule = _$AppMopule();
    gh.singleton<_i3.Dio>(() => appMopule.dio);
    gh.singleton<_i4.DioClient>(() => _i4.DioClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i5.CarApi>(() => _i5.CarApi(gh<_i4.DioClient>()));
    return this;
  }
}

class _$AppMopule extends _i6.AppMopule {}
