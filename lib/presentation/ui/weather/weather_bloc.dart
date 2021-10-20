import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/entity/weather.dart';
import '../../../domain/error/remote_exception.dart';
import '../../../domain/usecase/get_location_by_time_use_case.dart';
import '../../../shared/extensions.dart';
import '../../base/base_bloc.dart';

@Injectable()
class WeatherBloc extends BaseBloc {
  late final GetLocationByTimeUseCase _getLocationByTimeUseCase;

  // input
  late Function(RemoteException) funcOnServerError;
  late void Function(String) funcTimeChanged;

  /// Output
  late Stream<String?> streamError;
  late Stream<List<Weather>> streamGetLocationSuccess;

  WeatherBloc(this._getLocationByTimeUseCase) {
    final _timeController = BehaviorSubject.seeded('2021/10/20')
      ..disposeBy(disposeBag);
    final _onServerErrorController = PublishSubject<String?>()
      ..disposeBy(disposeBag);
    funcOnServerError = (RemoteException exception) =>
        _onServerErrorController.add(exception.exception.toString());
    streamError = _onServerErrorController.stream;
    funcTimeChanged = _timeController.add;
    streamGetLocationSuccess = _timeController.stream.flatMap((time) {
      return _getLocationByTime(_timeController.value);
    });
  }

  Stream<List<Weather>> _getLocationByTime(String time) => executeFuture(
        _getLocationByTimeUseCase(time),
      );
}
