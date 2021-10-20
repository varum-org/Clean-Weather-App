import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ShowSnackBarBuildContextExtension on BuildContext {
  void showSnackBar(
    String message, [
    Duration duration = const Duration(seconds: 3),
  ]) {
    final messengerState = ScaffoldMessenger.maybeOf(this);
    log('message $message $messengerState');
    if (messengerState == null) {
      return;
    }
    messengerState.hideCurrentSnackBar();
    messengerState.showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration,
      ),
    );
  }

  void showLoading() {
    showDialog<void>(
      context: this,
      barrierDismissible: false,
      useSafeArea: false,
      builder: (context) {
        return const Material(
          type: MaterialType.transparency,
          child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
        );
      },
    );
  }

  void hideKeyboard() {
    final FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  void showAlertDialog({
    required String message,
    VoidCallback? onActionPressed,
  }) {
    showDialog(
      context: this,
      builder: (_) => CupertinoAlertDialog(
        content: Text(message),
        actions: <Widget>[
          CupertinoDialogAction(
            child: const Text('OK'),
            isDefaultAction: true,
            onPressed: onActionPressed,
          )
        ],
      ),
    );
  }

  void showBottomSheet(WidgetBuilder builder) {
    showModalBottomSheet(context: this, builder: builder);
  }
}
