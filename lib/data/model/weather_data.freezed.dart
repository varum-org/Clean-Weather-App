// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherData _$WeatherDataFromJson(Map<String, dynamic> json) {
  return _WeatherData.fromJson(json);
}

/// @nodoc
class _$WeatherDataTearOff {
  const _$WeatherDataTearOff();

  _WeatherData call(
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
      @JsonKey(name: 'predictability') double? predictability}) {
    return _WeatherData(
      id: id,
      weatherStateName: weatherStateName,
      weatherStateAbbr: weatherStateAbbr,
      windDirectionCompass: windDirectionCompass,
      created: created,
      applicableDate: applicableDate,
      minTemp: minTemp,
      maxTemp: maxTemp,
      theTemp: theTemp,
      windSpeed: windSpeed,
      windDirection: windDirection,
      airPressure: airPressure,
      humidity: humidity,
      visibility: visibility,
      predictability: predictability,
    );
  }

  WeatherData fromJson(Map<String, Object> json) {
    return WeatherData.fromJson(json);
  }
}

/// @nodoc
const $WeatherData = _$WeatherDataTearOff();

/// @nodoc
mixin _$WeatherData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_state_name')
  String? get weatherStateName => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather_state_abbr')
  String? get weatherStateAbbr => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction_compass')
  String? get windDirectionCompass => throw _privateConstructorUsedError;
  @JsonKey(name: 'created')
  String? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'applicable_date')
  String? get applicableDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_temp')
  double? get minTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_temp')
  double? get maxTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'the_temp')
  double? get theTemp => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_direction')
  double? get windDirection => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_pressure')
  double? get airPressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  double? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  double? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'predictability')
  double? get predictability => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDataCopyWith<WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDataCopyWith<$Res> {
  factory $WeatherDataCopyWith(
          WeatherData value, $Res Function(WeatherData) then) =
      _$WeatherDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
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
      @JsonKey(name: 'predictability') double? predictability});
}

/// @nodoc
class _$WeatherDataCopyWithImpl<$Res> implements $WeatherDataCopyWith<$Res> {
  _$WeatherDataCopyWithImpl(this._value, this._then);

  final WeatherData _value;
  // ignore: unused_field
  final $Res Function(WeatherData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? weatherStateName = freezed,
    Object? weatherStateAbbr = freezed,
    Object? windDirectionCompass = freezed,
    Object? created = freezed,
    Object? applicableDate = freezed,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? theTemp = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? airPressure = freezed,
    Object? humidity = freezed,
    Object? visibility = freezed,
    Object? predictability = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weatherStateName: weatherStateName == freezed
          ? _value.weatherStateName
          : weatherStateName // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherStateAbbr: weatherStateAbbr == freezed
          ? _value.weatherStateAbbr
          : weatherStateAbbr // ignore: cast_nullable_to_non_nullable
              as String?,
      windDirectionCompass: windDirectionCompass == freezed
          ? _value.windDirectionCompass
          : windDirectionCompass // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      applicableDate: applicableDate == freezed
          ? _value.applicableDate
          : applicableDate // ignore: cast_nullable_to_non_nullable
              as String?,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      theTemp: theTemp == freezed
          ? _value.theTemp
          : theTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double?,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double?,
      predictability: predictability == freezed
          ? _value.predictability
          : predictability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$WeatherDataCopyWith<$Res>
    implements $WeatherDataCopyWith<$Res> {
  factory _$WeatherDataCopyWith(
          _WeatherData value, $Res Function(_WeatherData) then) =
      __$WeatherDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
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
      @JsonKey(name: 'predictability') double? predictability});
}

/// @nodoc
class __$WeatherDataCopyWithImpl<$Res> extends _$WeatherDataCopyWithImpl<$Res>
    implements _$WeatherDataCopyWith<$Res> {
  __$WeatherDataCopyWithImpl(
      _WeatherData _value, $Res Function(_WeatherData) _then)
      : super(_value, (v) => _then(v as _WeatherData));

  @override
  _WeatherData get _value => super._value as _WeatherData;

  @override
  $Res call({
    Object? id = freezed,
    Object? weatherStateName = freezed,
    Object? weatherStateAbbr = freezed,
    Object? windDirectionCompass = freezed,
    Object? created = freezed,
    Object? applicableDate = freezed,
    Object? minTemp = freezed,
    Object? maxTemp = freezed,
    Object? theTemp = freezed,
    Object? windSpeed = freezed,
    Object? windDirection = freezed,
    Object? airPressure = freezed,
    Object? humidity = freezed,
    Object? visibility = freezed,
    Object? predictability = freezed,
  }) {
    return _then(_WeatherData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weatherStateName: weatherStateName == freezed
          ? _value.weatherStateName
          : weatherStateName // ignore: cast_nullable_to_non_nullable
              as String?,
      weatherStateAbbr: weatherStateAbbr == freezed
          ? _value.weatherStateAbbr
          : weatherStateAbbr // ignore: cast_nullable_to_non_nullable
              as String?,
      windDirectionCompass: windDirectionCompass == freezed
          ? _value.windDirectionCompass
          : windDirectionCompass // ignore: cast_nullable_to_non_nullable
              as String?,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      applicableDate: applicableDate == freezed
          ? _value.applicableDate
          : applicableDate // ignore: cast_nullable_to_non_nullable
              as String?,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      theTemp: theTemp == freezed
          ? _value.theTemp
          : theTemp // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double?,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double?,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double?,
      predictability: predictability == freezed
          ? _value.predictability
          : predictability // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherData extends _WeatherData {
  const _$_WeatherData(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'weather_state_name') this.weatherStateName,
      @JsonKey(name: 'weather_state_abbr') this.weatherStateAbbr,
      @JsonKey(name: 'wind_direction_compass') this.windDirectionCompass,
      @JsonKey(name: 'created') this.created,
      @JsonKey(name: 'applicable_date') this.applicableDate,
      @JsonKey(name: 'min_temp') this.minTemp,
      @JsonKey(name: 'max_temp') this.maxTemp,
      @JsonKey(name: 'the_temp') this.theTemp,
      @JsonKey(name: 'wind_speed') this.windSpeed,
      @JsonKey(name: 'wind_direction') this.windDirection,
      @JsonKey(name: 'air_pressure') this.airPressure,
      @JsonKey(name: 'humidity') this.humidity,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'predictability') this.predictability})
      : super._();

  factory _$_WeatherData.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherDataFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'weather_state_name')
  final String? weatherStateName;
  @override
  @JsonKey(name: 'weather_state_abbr')
  final String? weatherStateAbbr;
  @override
  @JsonKey(name: 'wind_direction_compass')
  final String? windDirectionCompass;
  @override
  @JsonKey(name: 'created')
  final String? created;
  @override
  @JsonKey(name: 'applicable_date')
  final String? applicableDate;
  @override
  @JsonKey(name: 'min_temp')
  final double? minTemp;
  @override
  @JsonKey(name: 'max_temp')
  final double? maxTemp;
  @override
  @JsonKey(name: 'the_temp')
  final double? theTemp;
  @override
  @JsonKey(name: 'wind_speed')
  final double? windSpeed;
  @override
  @JsonKey(name: 'wind_direction')
  final double? windDirection;
  @override
  @JsonKey(name: 'air_pressure')
  final double? airPressure;
  @override
  @JsonKey(name: 'humidity')
  final double? humidity;
  @override
  @JsonKey(name: 'visibility')
  final double? visibility;
  @override
  @JsonKey(name: 'predictability')
  final double? predictability;

  @override
  String toString() {
    return 'WeatherData(id: $id, weatherStateName: $weatherStateName, weatherStateAbbr: $weatherStateAbbr, windDirectionCompass: $windDirectionCompass, created: $created, applicableDate: $applicableDate, minTemp: $minTemp, maxTemp: $maxTemp, theTemp: $theTemp, windSpeed: $windSpeed, windDirection: $windDirection, airPressure: $airPressure, humidity: $humidity, visibility: $visibility, predictability: $predictability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.weatherStateName, weatherStateName) ||
                const DeepCollectionEquality()
                    .equals(other.weatherStateName, weatherStateName)) &&
            (identical(other.weatherStateAbbr, weatherStateAbbr) ||
                const DeepCollectionEquality()
                    .equals(other.weatherStateAbbr, weatherStateAbbr)) &&
            (identical(other.windDirectionCompass, windDirectionCompass) ||
                const DeepCollectionEquality().equals(
                    other.windDirectionCompass, windDirectionCompass)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality()
                    .equals(other.created, created)) &&
            (identical(other.applicableDate, applicableDate) ||
                const DeepCollectionEquality()
                    .equals(other.applicableDate, applicableDate)) &&
            (identical(other.minTemp, minTemp) ||
                const DeepCollectionEquality()
                    .equals(other.minTemp, minTemp)) &&
            (identical(other.maxTemp, maxTemp) ||
                const DeepCollectionEquality()
                    .equals(other.maxTemp, maxTemp)) &&
            (identical(other.theTemp, theTemp) ||
                const DeepCollectionEquality()
                    .equals(other.theTemp, theTemp)) &&
            (identical(other.windSpeed, windSpeed) ||
                const DeepCollectionEquality()
                    .equals(other.windSpeed, windSpeed)) &&
            (identical(other.windDirection, windDirection) ||
                const DeepCollectionEquality()
                    .equals(other.windDirection, windDirection)) &&
            (identical(other.airPressure, airPressure) ||
                const DeepCollectionEquality()
                    .equals(other.airPressure, airPressure)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)) &&
            (identical(other.visibility, visibility) ||
                const DeepCollectionEquality()
                    .equals(other.visibility, visibility)) &&
            (identical(other.predictability, predictability) ||
                const DeepCollectionEquality()
                    .equals(other.predictability, predictability)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(weatherStateName) ^
      const DeepCollectionEquality().hash(weatherStateAbbr) ^
      const DeepCollectionEquality().hash(windDirectionCompass) ^
      const DeepCollectionEquality().hash(created) ^
      const DeepCollectionEquality().hash(applicableDate) ^
      const DeepCollectionEquality().hash(minTemp) ^
      const DeepCollectionEquality().hash(maxTemp) ^
      const DeepCollectionEquality().hash(theTemp) ^
      const DeepCollectionEquality().hash(windSpeed) ^
      const DeepCollectionEquality().hash(windDirection) ^
      const DeepCollectionEquality().hash(airPressure) ^
      const DeepCollectionEquality().hash(humidity) ^
      const DeepCollectionEquality().hash(visibility) ^
      const DeepCollectionEquality().hash(predictability);

  @JsonKey(ignore: true)
  @override
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      __$WeatherDataCopyWithImpl<_WeatherData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherDataToJson(this);
  }
}

abstract class _WeatherData extends WeatherData {
  const factory _WeatherData(
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
          @JsonKey(name: 'predictability') double? predictability}) =
      _$_WeatherData;
  const _WeatherData._() : super._();

  factory _WeatherData.fromJson(Map<String, dynamic> json) =
      _$_WeatherData.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'weather_state_name')
  String? get weatherStateName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'weather_state_abbr')
  String? get weatherStateAbbr => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wind_direction_compass')
  String? get windDirectionCompass => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created')
  String? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'applicable_date')
  String? get applicableDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'min_temp')
  double? get minTemp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'max_temp')
  double? get maxTemp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'the_temp')
  double? get theTemp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wind_speed')
  double? get windSpeed => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'wind_direction')
  double? get windDirection => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'air_pressure')
  double? get airPressure => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'humidity')
  double? get humidity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'visibility')
  double? get visibility => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'predictability')
  double? get predictability => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherDataCopyWith<_WeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}
