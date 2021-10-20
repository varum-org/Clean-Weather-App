import 'package:flutter/material.dart';

import '../../../domain/error/remote_exception.dart';
import '../error_handler.dart';
import 'remote_error_listener.dart';

class RemoteErrorHandler
    extends ErrorHandler<RemoteException, RemoteErrorListener> {
  @override
  void proceed(BuildContext context, RemoteException exception,
      RemoteErrorListener listener) {
    switch (exception.kind) {
      case RemoteExceptionKind.server:
        listener.onServerError(
          context,
          exception,
        );
        break;
      case RemoteExceptionKind.http:
        if (exception.isServerInternalError) {
          listener.onServerInternalError(
            context,
            'server_down_error',
          );
        } else {
          listener.onHttpError(
            context,
            'unexpected_error',
          );
        }
        break;
      case RemoteExceptionKind.noInternet:
        listener.onNoInterNetConnectionError(
          context,
          'check_connection',
        );
        break;
      case RemoteExceptionKind.network:
        listener.onNetworkError(
          context,
          'server_problem_try_later',
        );
        break;
      case RemoteExceptionKind.timeout:
        listener.onTimeoutError(
          context,
          'check_connection',
        );
        break;
      case RemoteExceptionKind.cancellation:
        break;
      case RemoteExceptionKind.unexpected:
        listener.onUnexpectedError(
          context,
          'unexpected_error',
        );
        break;
    }
  }
}
