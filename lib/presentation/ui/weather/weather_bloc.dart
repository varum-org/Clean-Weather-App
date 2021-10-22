import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/entity/unit.dart';
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
  late Function(int) funcTimeChanged;
  late Function(SwipeEvent) funcSwipeChanged;
  late Function(Unit) funcRefreshChanged;

  /// Output
  late Stream<String?> streamError;
  late ReplayStream<List<Weather>> streamWeather;
  late Stream<List<MyDateTime>> streamWeeks;

  WeatherBloc(this._getLocationByTimeUseCase) {
    // controller
    final _onServerErrorController = PublishSubject<String?>()
      ..disposeBy(disposeBag);
    final _timeChangeController =
        BehaviorSubject.seeded(DateTime.now().weekday - 1)
          ..disposeBy(disposeBag);
    final _weeksController =
        BehaviorSubject.seeded(getListMyDates(DateTime.now(), null))
          ..disposeBy(disposeBag);
    final _funcSwipeChangeController = PublishSubject<SwipeEvent>()
      ..disposeBy(disposeBag);
    final _funcRefreshChangeController = PublishSubject<Unit>()
      ..disposeBy(disposeBag);
    // input
    funcOnServerError = (RemoteException exception) =>
        _onServerErrorController.add(exception.exception.toString());
    funcTimeChanged = _timeChangeController.add;
    funcSwipeChanged = _funcSwipeChangeController.add;
    funcRefreshChanged = _funcRefreshChangeController.add;
    // output
    streamWeather = Rx.merge<int>([
      _funcRefreshChangeController.map((_) {
        _weeksController.add(getListMyDates(DateTime.now(), null));
        return (DateTime.now().weekday - 1);
      }),
      _timeChangeController.map((position) {
        _weeksController.add(_weeksController.value
            .asMap()
            .keys
            .toList()
            .map((index) =>
                MyDateTime(index == position, DateTime.now().getWeeks()[index]))
            .toList());
        return position;
      }),
      _funcSwipeChangeController.map((event) {
        _weeksController.add(getListMyDates(
            _weeksController.value.first.date
                .add(Duration(days: event == SwipeEvent.next ? 7 : -7)),
            _weeksController.value.indexWhere((e) => e.selected)));
        return _weeksController.value.indexWhere((e) => e.selected);
      })
    ])
        .flatMap((event) => _getLocationByTime(
            _weeksController.value.firstWhere((element) => element.selected)))
        .shareReplay(maxSize: 1);
    streamWeeks = _weeksController.stream;
    streamError = _onServerErrorController.stream;
  }

  Stream<List<Weather>> _getLocationByTime(MyDateTime myDate) => executeFuture(
        _getLocationByTimeUseCase(DateFormat('y/M/d').format(myDate.date)),
      );

  List<MyDateTime> getListMyDates(DateTime date, int? position) => date
      .getWeeks()
      .asMap()
      .keys
      .toList()
      .map((index) => MyDateTime(
          index == (position ?? date.weekday - 1), date.getWeeks()[index]))
      .toList();
}

enum SwipeEvent { next, previous }

class MyDateTime {
  late bool selected;
  late DateTime date;

  MyDateTime(this.selected, this.date);
}
