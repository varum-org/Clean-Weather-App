import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../domain/entity/weather.dart';
import '../../base/base_state.dart';
import 'weather_bloc.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends BaseState<WeatherScreen, WeatherBloc> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => bloc,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder<List<Weather>>(
                stream: bloc.streamWeather,
                builder: (context, snapshot) {
                  return Text(snapshot.data?.first.weatherStateName ?? '',
                      style: Theme.of(context).textTheme.headline4);
                }),
            StreamBuilder<List<MyDateTime>>(
                stream: bloc.streamWeeks,
                builder: (context, snapshot) {
                  return Text(snapshot.data?.first.selected.toString() ?? '',
                      style: Theme.of(context).textTheme.headline4);
                }),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                bloc.funcTimeChanged(Random().nextInt(6));
              },
              child: Text('Chọn Ngày'),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                bloc.funcSwipeChanged(SwipeEvent.previous);
              },
              child: Text('Get Weather'),
            )
          ],
        ),
      ),
    );
  }
}
