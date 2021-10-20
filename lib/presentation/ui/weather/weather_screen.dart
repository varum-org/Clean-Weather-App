import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/extensions.dart';
import '../../base/base_state.dart';
import 'weather_bloc.dart';

class WeatherScreen extends StatefulWidget {

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends BaseState<WeatherScreen, WeatherBloc> {
  @override
  void initState() {
    super.initState();
    bloc
      ..streamGetLocationSuccess.listen((data) {
        context.showSnackBar(data.first.toString());
      }).disposeBy(disposeBag);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => bloc,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('0', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
    );
  }
}
