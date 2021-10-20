class RemoteException implements Exception {
  final RemoteExceptionKind kind;
  final int? statusCode;
  final Exception? exception;

  const RemoteException._(this.kind, {this.statusCode, this.exception});

  const RemoteException.httpError(int? statusCode)
      : this._(RemoteExceptionKind.http, statusCode: statusCode);

  const RemoteException.networkError(int statusCode)
      : this._(RemoteExceptionKind.network, statusCode: statusCode);

  const RemoteException.noInternetError()
      : this._(RemoteExceptionKind.noInternet);

  const RemoteException.timeoutError() : this._(RemoteExceptionKind.timeout);

  const RemoteException.cancellationError()
      : this._(RemoteExceptionKind.cancellation);

  const RemoteException.unexpectedError(Exception exception)
      : this._(RemoteExceptionKind.unexpected, exception: exception);

  bool get isServerInternalError =>
      statusCode != null && statusCode! >= 500 && statusCode! <= 599;

  @override
  String toString() {
    return 'RemoteException: {kind: $kind, statusCode: $statusCode, exception: $exception}';
  }
}

enum RemoteExceptionKind {
  noInternet,
  network,
  http,
  server,
  timeout,
  cancellation,
  unexpected
}
