// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../data/api_clients/car_api.dart' as _i11;
import '../data/api_clients/dio_client.dart' as _i10;
import '../data/bloc/auth_bloc.dart' as _i20;
import '../data/interceptors/auth_interceptor.dart' as _i8;
import '../data/storage/secure_storage.dart' as _i7;
import '../domain/bloc_observer/global_bloc_observer.dart' as _i6;
import '../domain/modules/app_module.dart' as _i21;
import '../domain/repositories/auth_repository.dart' as _i18;
import '../domain/repositories/model_trims_repository.dart' as _i12;
import '../domain/repositories/vehicle_details_repository.dart' as _i13;
import '../domain/repositories/vehicle_makes_repository.dart' as _i14;
import '../presentation/model_trims/bloc/model_trims_bloc.dart' as _i16;
import '../presentation/trim_details/bloc/trim_details_bloc.dart' as _i17;
import '../presentation/vehicle_make_details/bloc/vehicle_details_bloc.dart'
    as _i19;
import '../presentation/vehicle_make_details/cubit/filter_chip_cubit.dart'
    as _i3;
import '../presentation/vehicle_makes/bloc/vehicle_makes_bloc.dart' as _i15;

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
    gh.factory<_i3.FilterChipCubit>(() => _i3.FilterChipCubit());
    gh.singleton<_i4.FlutterSecureStorage>(() => appMopule.storage);
    gh.lazySingleton<_i5.Logger>(() => appMopule.logger);
    gh.singleton<_i6.GlobalBlocObserver>(
        () => _i6.GlobalBlocObserver(gh<_i5.Logger>()));
    gh.lazySingleton<_i7.SecureStorage>(
        () => _i7.SecureStorage(gh<_i4.FlutterSecureStorage>()));
    gh.singleton<_i8.AuthInterceptor>(
        () => _i8.AuthInterceptor(gh<_i7.SecureStorage>()));
    gh.singleton<_i9.Dio>(() => appMopule.dio(gh<_i8.AuthInterceptor>()));
    gh.singleton<_i10.DioClient>(() => _i10.DioClient(gh<_i9.Dio>()));
    gh.lazySingleton<_i11.CarApi>(() => _i11.CarApi(gh<_i10.DioClient>()));
    gh.lazySingleton<_i12.ModelTrimsRepository>(
        () => _i12.ModelTrimsRepository(carApi: gh<_i11.CarApi>()));
    gh.lazySingleton<_i13.VehicleDetailsRepository>(
        () => _i13.VehicleDetailsRepository(carApi: gh<_i11.CarApi>()));
    gh.lazySingleton<_i14.VehicleMakesRepository>(
        () => _i14.VehicleMakesRepository(carApi: gh<_i11.CarApi>()));
    gh.factory<_i15.VehicleMakesBloc>(
        () => _i15.VehicleMakesBloc(gh<_i14.VehicleMakesRepository>()));
    gh.factory<_i16.ModelTrimsBloc>(
        () => _i16.ModelTrimsBloc(gh<_i12.ModelTrimsRepository>()));
    gh.factory<_i17.TrimDetailsBloc>(
        () => _i17.TrimDetailsBloc(gh<_i12.ModelTrimsRepository>()));
    gh.singleton<_i18.AuthRepository>(() => _i18.AuthRepository(
          gh<_i7.SecureStorage>(),
          gh<_i11.CarApi>(),
        ));
    gh.factory<_i19.VehicleDetailsBloc>(
        () => _i19.VehicleDetailsBloc(gh<_i13.VehicleDetailsRepository>()));
    gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(gh<_i18.AuthRepository>()));
    return this;
  }
}

class _$AppMopule extends _i21.AppMopule {}
