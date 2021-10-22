
import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';
import '../../domain/error/remote_exception.dart';
import 'local/local_error_listener.dart';
import 'remote/remote_error_listener.dart';

mixin ErrorListenerMixin implements LocalErrorListener, RemoteErrorListener {
  @override
  void onHttpError(BuildContext context, String message) {
    _showSnackBar(context: context, message: message);
  }

  @override
  void onServerInternalError(BuildContext context, String message) {
    _showSnackBar(context: context, message: message);
  }

  @override
  void onNetworkError(BuildContext context, String message) {
    _showSnackBar(context: context, message: message);
  }

  @override
  void onNoInterNetConnectionError(BuildContext context, String message) {
    _showSnackBar(context: context, message: message);
  }

  @override
  void onServerError(
    BuildContext context,
    RemoteException exception,
  ) {
    _showSnackBar(
      context: context,
      message: exception.exception.toString(),
    );
  }

  @override
  void onTimeoutError(BuildContext context, String message) {
    _showSnackBar(context: context, message: message);
  }

  @override
  void onUnexpectedError(BuildContext context, String message) {
    _showSnackBar(context: context, message: message);
  }

  void _showSnackBar({
    required BuildContext context,
    required String message,
  }) {
    context.showSnackBar(message);
  }

  // ignore: unused_element
  void _showAlertDialog({
    required BuildContext context,
    required String message,
    VoidCallback? onActionPressed,
  }) {
    context.showAlertDialog(
      message: message,
      onActionPressed: onActionPressed,
    );
  }
}
