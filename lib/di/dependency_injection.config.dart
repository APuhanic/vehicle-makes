// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../data/api_clients/car_api.dart' as _i9;
import '../data/api_clients/dio_client.dart' as _i7;
import '../data/bloc/auth_bloc.dart' as _i11;
import '../data/storage/secure_storage.dart' as _i8;
import '../domain/bloc_observer/global_bloc_observer.dart' as _i6;
import '../domain/modules/app_module.dart' as _i12;
import '../domain/repositories/auth_repository.dart' as _i10;

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
    gh.singleton<_i4.FlutterSecureStorage>(() => appMopule.storage);
    gh.lazySingleton<_i5.Logger>(() => appMopule.logger);
    gh.singleton<_i6.GlobalBlocObserver>(
        () => _i6.GlobalBlocObserver(gh<_i5.Logger>()));
    gh.singleton<_i7.DioClient>(() => _i7.DioClient(gh<_i3.Dio>()));
    gh.lazySingleton<_i8.SecureStorage>(
        () => _i8.SecureStorage(gh<_i4.FlutterSecureStorage>()));
    gh.lazySingleton<_i9.CarApi>(() => _i9.CarApi(gh<_i7.DioClient>()));
    gh.singleton<_i10.AuthRepository>(
        () => _i10.AuthRepository(carApi: gh<_i9.CarApi>()));
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(
          gh<_i10.AuthRepository>(),
          gh<_i8.SecureStorage>(),
        ));
    return this;
  }
}

class _$AppMopule extends _i12.AppMopule {}
