import 'package:injectable/injectable.dart';

import '../../domain/entity/weather.dart';
import '../model/weather_data.dart';
import 'base_mapper.dart';

@Injectable()
class WeatherDataMapper extends BaseMapper<WeatherData, Weather>
    with MapperMixin {
  WeatherDataMapper();

  @override
  Weather mapToEntity(WeatherData? data) {
    return Weather(
        id: data?.id ?? -1,
        weatherStateName: data?.weatherStateName ?? '',
        weatherStateAbbr: data?.weatherStateAbbr ?? '',
        windDirectionCompass: data?.windDirectionCompass ?? '',
        created: data?.created ?? '',
        applicableDate: data?.applicableDate ?? '',
        minTemp: data?.minTemp ?? 0.0,
        maxTemp: data?.maxTemp ?? 0.0,
        theTemp: data?.theTemp ?? 0.0,
        windSpeed: data?.windSpeed ?? 0.0,
        windDirection: data?.windDirection ?? 0.0,
        airPressure: data?.airPressure ?? 0.0,
        humidity: data?.humidity ?? 0.0,
        visibility: data?.visibility ?? 0.0,
        predictability: data?.predictability ?? 0.0);
  }

  @override
  WeatherData mapToRemoteData(Weather entity) {
    return WeatherData(
        id: entity.id,
        weatherStateName: entity.weatherStateName,
        weatherStateAbbr: entity.weatherStateAbbr,
        windDirectionCompass: entity.windDirectionCompass,
        created: entity.created,
        applicableDate: entity.applicableDate,
        minTemp: entity.minTemp,
        maxTemp: entity.maxTemp,
        theTemp: entity.theTemp,
        windSpeed: entity.windSpeed,
        windDirection: entity.windDirection,
        airPressure: entity.airPressure,
        humidity: entity.humidity,
        visibility: entity.visibility,
        predictability: entity.predictability);
  }
}
