import '../entity/weather.dart';

abstract class WeatherRepository {
  Future<List<Weather>> getLocationByTime(String time);
}
