import 'dart:async';

import '../../utils/log_utils.dart';

class DisposeBagConfig {
  static bool enableLogging = true;
}

class DisposeBag {
  final List<Object> _disposable = [];

  void addDisposable(Object disposable) {
    _disposable.add(disposable);
  }

  void dispose() {
    _disposable.forEach((disposable) {
      if (disposable is StreamSubscription) {
        disposable.cancel();
        if (DisposeBagConfig.enableLogging) printKV(tag, 'canceled $disposable');
      } else if (disposable is StreamController) {
        disposable.close();
        if (DisposeBagConfig.enableLogging) printKV(tag, 'closed $disposable');
      }
    });

    _disposable.clear();
  }

  static const tag = 'DisposeBag';
}
