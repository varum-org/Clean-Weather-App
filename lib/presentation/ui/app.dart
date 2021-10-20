import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wether_app/presentation/ui/weather/weather_screen.dart';

import '../base/base_state.dart';
import 'app_bloc.dart';

class MyApp extends StatefulWidget {
  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends BaseState<MyApp, AppBloc> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => bloc,
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.blue),
          home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: const Text('Weather App'),
                ),
                body: WeatherScreen()),
          ),
        ));
  }
}
