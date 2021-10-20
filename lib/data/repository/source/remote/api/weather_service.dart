import 'package:injectable/injectable.dart';

import '../../../../model/weather_data.dart';
import 'base_api_service.dart';

@LazySingleton()
class WeatherService extends BaseApiService {
  Future<List<WeatherData>> getLocationByTime(String time) async {
    final response = await request(
      method: Method.get,
      path: 'location/1252431/$time',
    );
    return WeatherData.parseResponse(response);
  }
}
