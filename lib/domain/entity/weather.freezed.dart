// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {int id = -1,
      String weatherStateName = '',
      String weatherStateAbbr = '',
      String windDirectionCompass = '',
      String created = '',
      String applicableDate = '',
      double minTemp = 0.0,
      double maxTemp = 0.0,
      double theTemp = 0.0,
      double windSpeed = 0.0,
      double windDirection = 0.0,
      double airPressure = 0.0,
      double humidity = 0.0,
      double visibility = 0.0,
      double predictability = 0.0}) {
    return _Weather(
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
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  int get id => throw _privateConstructorUsedError;
  String get weatherStateName => throw _privateConstructorUsedError;
  String get weatherStateAbbr => throw _privateConstructorUsedError;
  String get windDirectionCompass => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get applicableDate => throw _privateConstructorUsedError;
  double get minTemp => throw _privateConstructorUsedError;
  double get maxTemp => throw _privateConstructorUsedError;
  double get theTemp => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  double get windDirection => throw _privateConstructorUsedError;
  double get airPressure => throw _privateConstructorUsedError;
  double get humidity => throw _privateConstructorUsedError;
  double get visibility => throw _privateConstructorUsedError;
  double get predictability => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String weatherStateName,
      String weatherStateAbbr,
      String windDirectionCompass,
      String created,
      String applicableDate,
      double minTemp,
      double maxTemp,
      double theTemp,
      double windSpeed,
      double windDirection,
      double airPressure,
      double humidity,
      double visibility,
      double predictability});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

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
              as String,
      weatherStateAbbr: weatherStateAbbr == freezed
          ? _value.weatherStateAbbr
          : weatherStateAbbr // ignore: cast_nullable_to_non_nullable
              as String,
      windDirectionCompass: windDirectionCompass == freezed
          ? _value.windDirectionCompass
          : windDirectionCompass // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      applicableDate: applicableDate == freezed
          ? _value.applicableDate
          : applicableDate // ignore: cast_nullable_to_non_nullable
              as String,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      theTemp: theTemp == freezed
          ? _value.theTemp
          : theTemp // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double,
      predictability: predictability == freezed
          ? _value.predictability
          : predictability // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String weatherStateName,
      String weatherStateAbbr,
      String windDirectionCompass,
      String created,
      String applicableDate,
      double minTemp,
      double maxTemp,
      double theTemp,
      double windSpeed,
      double windDirection,
      double airPressure,
      double humidity,
      double visibility,
      double predictability});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

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
    return _then(_Weather(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weatherStateName: weatherStateName == freezed
          ? _value.weatherStateName
          : weatherStateName // ignore: cast_nullable_to_non_nullable
              as String,
      weatherStateAbbr: weatherStateAbbr == freezed
          ? _value.weatherStateAbbr
          : weatherStateAbbr // ignore: cast_nullable_to_non_nullable
              as String,
      windDirectionCompass: windDirectionCompass == freezed
          ? _value.windDirectionCompass
          : windDirectionCompass // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String,
      applicableDate: applicableDate == freezed
          ? _value.applicableDate
          : applicableDate // ignore: cast_nullable_to_non_nullable
              as String,
      minTemp: minTemp == freezed
          ? _value.minTemp
          : minTemp // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemp: maxTemp == freezed
          ? _value.maxTemp
          : maxTemp // ignore: cast_nullable_to_non_nullable
              as double,
      theTemp: theTemp == freezed
          ? _value.theTemp
          : theTemp // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      windDirection: windDirection == freezed
          ? _value.windDirection
          : windDirection // ignore: cast_nullable_to_non_nullable
              as double,
      airPressure: airPressure == freezed
          ? _value.airPressure
          : airPressure // ignore: cast_nullable_to_non_nullable
              as double,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: visibility == freezed
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as double,
      predictability: predictability == freezed
          ? _value.predictability
          : predictability // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Weather implements _Weather {
  const _$_Weather(
      {this.id = -1,
      this.weatherStateName = '',
      this.weatherStateAbbr = '',
      this.windDirectionCompass = '',
      this.created = '',
      this.applicableDate = '',
      this.minTemp = 0.0,
      this.maxTemp = 0.0,
      this.theTemp = 0.0,
      this.windSpeed = 0.0,
      this.windDirection = 0.0,
      this.airPressure = 0.0,
      this.humidity = 0.0,
      this.visibility = 0.0,
      this.predictability = 0.0});

  @JsonKey(defaultValue: -1)
  @override
  final int id;
  @JsonKey(defaultValue: '')
  @override
  final String weatherStateName;
  @JsonKey(defaultValue: '')
  @override
  final String weatherStateAbbr;
  @JsonKey(defaultValue: '')
  @override
  final String windDirectionCompass;
  @JsonKey(defaultValue: '')
  @override
  final String created;
  @JsonKey(defaultValue: '')
  @override
  final String applicableDate;
  @JsonKey(defaultValue: 0.0)
  @override
  final double minTemp;
  @JsonKey(defaultValue: 0.0)
  @override
  final double maxTemp;
  @JsonKey(defaultValue: 0.0)
  @override
  final double theTemp;
  @JsonKey(defaultValue: 0.0)
  @override
  final double windSpeed;
  @JsonKey(defaultValue: 0.0)
  @override
  final double windDirection;
  @JsonKey(defaultValue: 0.0)
  @override
  final double airPressure;
  @JsonKey(defaultValue: 0.0)
  @override
  final double humidity;
  @JsonKey(defaultValue: 0.0)
  @override
  final double visibility;
  @JsonKey(defaultValue: 0.0)
  @override
  final double predictability;

  @override
  String toString() {
    return 'Weather(id: $id, weatherStateName: $weatherStateName, weatherStateAbbr: $weatherStateAbbr, windDirectionCompass: $windDirectionCompass, created: $created, applicableDate: $applicableDate, minTemp: $minTemp, maxTemp: $maxTemp, theTemp: $theTemp, windSpeed: $windSpeed, windDirection: $windDirection, airPressure: $airPressure, humidity: $humidity, visibility: $visibility, predictability: $predictability)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weather &&
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
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {int id,
      String weatherStateName,
      String weatherStateAbbr,
      String windDirectionCompass,
      String created,
      String applicableDate,
      double minTemp,
      double maxTemp,
      double theTemp,
      double windSpeed,
      double windDirection,
      double airPressure,
      double humidity,
      double visibility,
      double predictability}) = _$_Weather;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get weatherStateName => throw _privateConstructorUsedError;
  @override
  String get weatherStateAbbr => throw _privateConstructorUsedError;
  @override
  String get windDirectionCompass => throw _privateConstructorUsedError;
  @override
  String get created => throw _privateConstructorUsedError;
  @override
  String get applicableDate => throw _privateConstructorUsedError;
  @override
  double get minTemp => throw _privateConstructorUsedError;
  @override
  double get maxTemp => throw _privateConstructorUsedError;
  @override
  double get theTemp => throw _privateConstructorUsedError;
  @override
  double get windSpeed => throw _privateConstructorUsedError;
  @override
  double get windDirection => throw _privateConstructorUsedError;
  @override
  double get airPressure => throw _privateConstructorUsedError;
  @override
  double get humidity => throw _privateConstructorUsedError;
  @override
  double get visibility => throw _privateConstructorUsedError;
  @override
  double get predictability => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
