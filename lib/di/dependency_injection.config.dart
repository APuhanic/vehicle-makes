// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../data/api_clients/car_api.dart' as _i10;
import '../data/api_clients/dio_client.dart' as _i8;
import '../data/bloc/auth_bloc.dart' as _i17;
import '../data/storage/secure_storage.dart' as _i9;
import '../domain/bloc_observer/global_bloc_observer.dart' as _i7;
import '../domain/modules/app_module.dart' as _i19;
import '../domain/repositories/auth_repository.dart' as _i14;
import '../domain/repositories/model_trims_repository.dart' as _i13;
import '../domain/repositories/vehicle_details_repository.dart' as _i11;
import '../domain/repositories/vehicle_makes_repository.dart' as _i12;
import '../presentation/model_trim/bloc/model_trims_bloc.dart' as _i16;
import '../presentation/vehicle_make_details/bloc/vehicle_details_bloc.dart'
    as _i18;
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
    gh.singleton<_i4.Dio>(() => appMopule.dio);
    gh.singleton<_i5.FlutterSecureStorage>(() => appMopule.storage);
    gh.lazySingleton<_i6.Logger>(() => appMopule.logger);
    gh.singleton<_i7.GlobalBlocObserver>(
        () => _i7.GlobalBlocObserver(gh<_i6.Logger>()));
    gh.singleton<_i8.DioClient>(() => _i8.DioClient(gh<_i4.Dio>()));
    gh.lazySingleton<_i9.SecureStorage>(
        () => _i9.SecureStorage(gh<_i5.FlutterSecureStorage>()));
    gh.lazySingleton<_i10.CarApi>(() => _i10.CarApi(gh<_i8.DioClient>()));
    gh.lazySingleton<_i11.VehicleDetailsRepository>(
        () => _i11.VehicleDetailsRepository(carApi: gh<_i10.CarApi>()));
    gh.lazySingleton<_i12.VehicleMakesRepository>(
        () => _i12.VehicleMakesRepository(carApi: gh<_i10.CarApi>()));
    gh.lazySingleton<_i13.ModelTrimsRepository>(
        () => _i13.ModelTrimsRepository(carApi: gh<_i10.CarApi>()));
    gh.singleton<_i14.AuthRepository>(
        () => _i14.AuthRepository(carApi: gh<_i10.CarApi>()));
    gh.factory<_i15.VehicleMakesBloc>(
        () => _i15.VehicleMakesBloc(gh<_i12.VehicleMakesRepository>()));
    gh.factory<_i16.ModelTrimsBloc>(
        () => _i16.ModelTrimsBloc(gh<_i13.ModelTrimsRepository>()));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(
          gh<_i14.AuthRepository>(),
          gh<_i9.SecureStorage>(),
        ));
    gh.factory<_i18.VehicleDetailsBloc>(
        () => _i18.VehicleDetailsBloc(gh<_i11.VehicleDetailsRepository>()));
    return this;
  }
}

class _$AppMopule extends _i19.AppMopule {}
