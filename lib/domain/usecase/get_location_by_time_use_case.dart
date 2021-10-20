import 'package:injectable/injectable.dart';

import '../entity/weather.dart';
import '../repository/weather_repository.dart';

@Injectable()
class GetLocationByTimeUseCase {
  final WeatherRepository _appRepository;

  const GetLocationByTimeUseCase(this._appRepository);

  Future<List<Weather>> call(String time) =>
      _appRepository.getLocationByTime(time);
}
