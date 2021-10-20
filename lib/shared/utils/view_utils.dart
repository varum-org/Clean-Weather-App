import 'dart:ui';

import 'package:flutter/services.dart';

void setStatusBarColor(Color color) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: color),
  );
}
