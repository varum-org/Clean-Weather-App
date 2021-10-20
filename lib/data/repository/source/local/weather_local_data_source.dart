import 'package:injectable/injectable.dart';

abstract class WeatherLocalDataSource {}

@LazySingleton(as: WeatherLocalDataSource)
class WeatherLocalDataSourceImpl extends WeatherLocalDataSource {}
