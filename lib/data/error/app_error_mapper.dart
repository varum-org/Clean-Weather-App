import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/error/mapper/exception_mapper.dart';
import '../../domain/error/remote_exception.dart';

@Injectable()
class AppErrorMapper extends ExceptionMapper<RemoteException> {
  @override
  RemoteException map(Object? exception) {
    if (exception is DioError) {
      if (exception.error is RemoteException) {
        return exception.error;
      }
      switch (exception.type) {
        case DioErrorType.cancel:
          return const RemoteException.cancellationError();
        case DioErrorType.connectTimeout:
        case DioErrorType.receiveTimeout:
        case DioErrorType.sendTimeout:
          return const RemoteException.timeoutError();
        case DioErrorType.other:
          break;
        case DioErrorType.response:
          return RemoteException.httpError(exception.response!.statusCode);
      }
    }

    // other Dio error,...
    return RemoteException.unexpectedError(exception is Exception
        ? exception
        : Exception(exception?.toString() ?? 'exception is null'));
  }
}
