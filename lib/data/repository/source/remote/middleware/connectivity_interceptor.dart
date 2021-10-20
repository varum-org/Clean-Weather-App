import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import '../../../../../../domain/error/remote_exception.dart';

class ConnectivityInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return handler.reject(DioError(
          requestOptions: options,
          error: const RemoteException.noInternetError()));
    }
    return super.onRequest(options, handler);
  }
}
