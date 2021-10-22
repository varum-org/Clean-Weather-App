import 'package:injectable/injectable.dart';

import '../../domain/entity/weather.dart';
import '../../domain/repository/weather_repository.dart';
import 'source/remote/weather_remote_data_source.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl extends WeatherRepository {
  final WeatherRemoteDataSource _appRemoteDataSource;

  WeatherRepositoryImpl(this._appRemoteDataSource);

  @override
  Future<List<Weather>> getLocationByTime(String time) =>
      _appRemoteDataSource.getLocationByTime(time);
}
