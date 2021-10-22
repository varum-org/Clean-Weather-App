import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:wether_app/domain/entity/unit.dart';

import '../../../domain/entity/weather.dart';
import '../../base/base_state.dart';
import 'cicle_bar_widget.dart';
import 'swipe_detector_widget.dart';
import 'weather_bloc.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends BaseState<WeatherScreen, WeatherBloc> {
  Future<void> _pullRefresh() async {
    bloc.funcRefreshChanged(Unit());
  }

  Widget _renderEmpty() {
    return const Expanded(
        child: Center(
      child: Text(
        'No Data',
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 50,
          fontWeight: FontWeight.normal,
        ),
      ),
    ));
  }

  Widget _renderItemWeek(BuildContext context, WeatherBloc bloc,
      MyDateTime element, int position) {
    return GestureDetector(
        onTap: () {
          bloc.funcTimeChanged(position);
        },
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: (element.selected)
                      ? [Colors.indigo, Colors.blue]
                      : [Colors.indigo, Colors.indigo])),
          width: MediaQuery.of(context).size.width / 7,
          height: MediaQuery.of(context).size.width / 7,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                    (element.date.day == DateTime.now().day)
                        ? 'Today'
                        : DateFormat.E().format(element.date),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text(DateFormat.Md().format(element.date),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SwipeDetector(
        onSwipeLeft: () {
          bloc.funcSwipeChanged(SwipeEvent.next);
        },
        onSwipeRight: () {
          bloc.funcSwipeChanged(SwipeEvent.previous);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StreamBuilder<List<MyDateTime>>(
                stream: bloc.streamWeeks,
                builder: (context, snapshot) {
                  return Row(
                    children: (snapshot.data ?? [])
                        .map((element) => _renderItemWeek(context, bloc,
                            element, (snapshot.data ?? []).indexOf(element)))
                        .toList(),
                  );
                }),
            StreamBuilder<List<Weather>>(
                stream: bloc.streamWeather,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return RefreshIndicator(
                      color: Colors.blue,
                      onRefresh: _pullRefresh,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 32.0, bottom: 32.0),
                              child: FadeInImage.memoryNetwork(
                                placeholder: kTransparentImage,
                                image:
                                    'https://www.metaweather.com/static/img/weather/png/${snapshot.data?.first.weatherStateAbbr}.png',
                                imageErrorBuilder: (BuildContext context,
                                    Object exception, StackTrace? stackTrace) {
                                  return Container(
                                    height: 80,
                                    child: const Icon(Icons.block),
                                  );
                                },
                                height: 80,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  snapshot.data?.first.theTemp != null
                                      ? '${snapshot.data?.first.theTemp.round()}'
                                      : '-',
                                  style: const TextStyle(
                                      color: Colors.black87,
                                      fontSize: 100.0,
                                      fontWeight: FontWeight.normal,
                                      letterSpacing: -10),
                                ),
                                const Text(
                                  '°c',
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 100.0,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: -10),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 16.0, bottom: 16.0),
                              child: Text(
                                  snapshot.data?.first.weatherStateName ?? '-',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.lightBlue,
                                      fontSize: 40)),
                            ),
                            Text(
                              snapshot.data?.first.applicableDate != null
                                  ? DateFormat('EEE MMM d, yyyy').format(
                                      DateTime.parse(
                                          snapshot.data?.first.applicableDate ??
                                              ''))
                                  : 'EEE MMM d, yyyy',
                              style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleBarWidget(
                                    snapshot.data?.first.humidity ?? 0,
                                    Colors.lightBlue,
                                    'Humidity'),
                                CircleBarWidget(
                                    snapshot.data?.first.predictability ?? 0,
                                    Colors.indigo,
                                    'Predictability')
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    return _renderEmpty();
                  }
                }),
          ],
        ));
  }
}
