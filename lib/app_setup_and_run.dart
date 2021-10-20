import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wether_app/shared/helper/stream/dispose_bag.dart';
import 'package:wether_app/shared/helper/stream/stream_logger.dart';

import 'data/repository/source/remote/middleware/custom_log_interceptor.dart';
import 'di/di.dart';
import 'presentation/ui/app.dart';

class App {
  static run() async {
    await _setup();
    runZonedGuarded(_runMyApp, _reportError);
  }

  static _runMyApp() async {
    runApp(MyApp());
  }

  static _reportError(Object error, StackTrace stacktrace) {
    print('uncaught error: $error');
    // report error by sentry or firebase crashlytic
  }

  static _setup() async {
    WidgetsFlutterBinding.ensureInitialized();

    /// setup DI
    await configureInjection();

    /// config logging
    _configLogging();
  }

  static _configLogging() {
    /// config http request logging
    HttpRequestLogConfig.enableLogInterceptor = kDebugMode;

    /// config stream logging
    StreamLoggerConfig.enableStreamLogger = kDebugMode;

    /// config DisposeBag logging
    DisposeBagConfig.enableLogging = kDebugMode;
  }
}
