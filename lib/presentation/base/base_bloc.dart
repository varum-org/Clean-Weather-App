
import '../../../shared/helper/stream/dispose_bag.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

abstract class BaseBloc extends ChangeNotifier {
  final DisposeBag disposeBag = DisposeBag();

  final _errorSubject = PublishSubject<Object>();

  Stream<Object> get errorStream => _errorSubject.stream;

  final _loadingSubject = PublishSubject<bool>();

  Stream<bool> get loadingStream => _loadingSubject.stream;

  Stream<T> executeFuture<T>(Future<T> future, {bool showLoading = true, bool showError = true}) {
    return executeStream(future.asStream(), showLoading: showLoading, showError: showError);
  }

  Stream<T> executeStream<T>(Stream<T> stream, {bool showLoading = true, bool showError = true}) {
    return stream.doOnListen(() {
      if (showLoading) emitLoading(true);
    }).doOnError((error, _) {
      if (showError) emitError(error);
    }).doOnDone(() {
      if (showLoading) emitLoading(false);
    });
  }

  void emitError(Object error) {
    _errorSubject.add(error);
  }

  void emitLoading(bool isLoading) {
    _loadingSubject.add(isLoading);
  }

  /// ChangeNotifier call dispose()
  @override
  void dispose() {
    closeStream();
    super.dispose();
  }

  @mustCallSuper
  void closeStream() {
    if (!_errorSubject.isClosed) _errorSubject.close();
    if (!_loadingSubject.isClosed) _loadingSubject.close();
    disposeBag.dispose();
  }
}
