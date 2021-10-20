import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_entity.dart';

part 'weather.freezed.dart';

@freezed
class Weather extends BaseEntity with _$Weather {
  const factory Weather(
      {@Default(-1) int id,
      @Default('') String weatherStateName,
      @Default('') String weatherStateAbbr,
      @Default('') String windDirectionCompass,
      @Default('') String created,
      @Default('') String applicableDate,
      @Default(0.0) double minTemp,
      @Default(0.0) double maxTemp,
      @Default(0.0) double theTemp,
      @Default(0.0) double windSpeed,
      @Default(0.0) double windDirection,
      @Default(0.0) double airPressure,
      @Default(0.0) double humidity,
      @Default(0.0) double visibility,
      @Default(0.0) double predictability}) = _Weather;
}
