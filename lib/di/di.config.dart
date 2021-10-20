// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/error/app_error_mapper.dart' as _i4;
import '../data/mapper/weather_data_mapper.dart' as _i5;
import '../data/repository/source/local/weather_local_data_source.dart' as _i6;
import '../data/repository/source/remote/api/weather_service.dart' as _i7;
import '../data/repository/source/remote/weather_remote_data_source.dart'
    as _i8;
import '../data/repository/weather_repository_impl.dart' as _i10;
import '../domain/repository/weather_repository.dart' as _i9;
import '../domain/usecase/get_location_by_time_use_case.dart' as _i11;
import '../presentation/ui/app_bloc.dart' as _i3;
import '../presentation/ui/weather/weather_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AppBloc>(() => _i3.AppBloc());
  gh.factory<_i4.AppErrorMapper>(() => _i4.AppErrorMapper());
  gh.factory<_i5.WeatherDataMapper>(() => _i5.WeatherDataMapper());
  gh.lazySingleton<_i6.WeatherLocalDataSource>(
      () => _i6.WeatherLocalDataSourceImpl());
  gh.lazySingleton<_i7.WeatherService>(() => _i7.WeatherService());
  gh.lazySingleton<_i8.WeatherRemoteDataSource>(() =>
      _i8.WeatherRemoteDataSourceImpl(
          get<_i7.WeatherService>(), get<_i5.WeatherDataMapper>()));
  gh.lazySingleton<_i9.WeatherRepository>(() => _i10.WeatherRepositoryImpl(
      get<_i6.WeatherLocalDataSource>(), get<_i8.WeatherRemoteDataSource>()));
  gh.factory<_i11.GetLocationByTimeUseCase>(
      () => _i11.GetLocationByTimeUseCase(get<_i9.WeatherRepository>()));
  gh.factory<_i12.WeatherBloc>(
      () => _i12.WeatherBloc(get<_i11.GetLocationByTimeUseCase>()));
  return get;
}
