import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wether_app/data/error/parse_json_exception.dart';

import 'base_data.dart';

part 'weather_data.freezed.dart';
part 'weather_data.g.dart';

@Freezed()
class WeatherData extends BaseData with _$WeatherData {
  const WeatherData._();

  const factory WeatherData(
      {@JsonKey(name: 'id') required int id,
      @JsonKey(name: 'weather_state_name') String? weatherStateName,
      @JsonKey(name: 'weather_state_abbr') String? weatherStateAbbr,
      @JsonKey(name: 'wind_direction_compass') String? windDirectionCompass,
      @JsonKey(name: 'created') String? created,
      @JsonKey(name: 'applicable_date') String? applicableDate,
      @JsonKey(name: 'min_temp') double? minTemp,
      @JsonKey(name: 'max_temp') double? maxTemp,
      @JsonKey(name: 'the_temp') double? theTemp,
      @JsonKey(name: 'wind_speed') double? windSpeed,
      @JsonKey(name: 'wind_direction') double? windDirection,
      @JsonKey(name: 'air_pressure') double? airPressure,
      @JsonKey(name: 'humidity') double? humidity,
      @JsonKey(name: 'visibility') double? visibility,
      @JsonKey(name: 'predictability') double? predictability}) = _WeatherData;

  factory WeatherData.fromJson(Map<String, dynamic> json) =>
      _$WeatherDataFromJson(json);

  static Future<List<WeatherData>> parseResponse(dynamic response) async {
    try {
      return (response as List).map((e) => WeatherData.fromJson(e)).toList();
    } catch (e) {
      throw ParseJsonException('Unable to parse response as JSON', e);
    }
  }
}
