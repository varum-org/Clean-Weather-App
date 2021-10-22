
import 'package:injectable/injectable.dart';

import '../../../../domain/entity/weather.dart';
import '../../../mapper/weather_data_mapper.dart';
import 'api/weather_service.dart';

abstract class WeatherRemoteDataSource {
  Future<List<Weather>> getLocationByTime(String time);
}

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl extends WeatherRemoteDataSource {
  final WeatherService _weatherService;
  final WeatherDataMapper _weatherDataMapper;

  WeatherRemoteDataSourceImpl(this._weatherService, this._weatherDataMapper);

  @override
  Future<List<Weather>> getLocationByTime(String time) async {
    final response = await _weatherService.getLocationByTime(time);
    return _weatherDataMapper.mapToListEntity(response);
  }
}
