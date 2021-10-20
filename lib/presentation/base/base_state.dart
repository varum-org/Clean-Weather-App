import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

import '../../../shared/extensions.dart';
import '../error/error_handler_factory.dart';
import '../error/error_listener_mixin.dart';
import 'base_bloc.dart';

abstract class BaseState<T extends StatefulWidget, Bloc extends BaseBloc>
    extends State<T> with ErrorListenerMixin {
  final Bloc bloc = GetIt.instance.get<Bloc>();

  get disposeBag => bloc.disposeBag;
  final _errorVisibleDuration = const Duration(seconds: 3);

  @override
  void initState() {
    super.initState();
    bloc
      ..errorStream
          .throttleTime(_errorVisibleDuration)
          .listen((error) =>
              ErrorHandlerFactory.handleErrorByType(context, error, this))
          .disposeBy(disposeBag)
      ..loadingStream.scan<Tuple2<int, bool>>((accumulated, value, _) {
        if (value)
          return Tuple2(accumulated.item1 + 1, value);
        else
          return Tuple2(accumulated.item1 - 1, value);
      }, const Tuple2(0, false)).listen(
        (loadingCounts) {
          if (loadingCounts.item1 == 1 && loadingCounts.item2) {
            showLoading();
          } else if (loadingCounts.item1 <= 0 && !loadingCounts.item2) {
            hideLoading();
          }
        },
      ).disposeBy(disposeBag);
  }

  @override
  void dispose() {
    bloc.closeStream();
    super.dispose();
  }

  void showLoading() {
    context.showLoading();
  }

  void hideLoading() {
    Navigator.of(context).pop();
  }
}
