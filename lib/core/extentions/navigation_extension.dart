import 'package:flutter/material.dart';

extension NavigatorExtension on BuildContext {
  @optionalTypeArgs
  void pop<T extends Object?>([T? result]) {
    return Navigator.of(this).pop<T>(result);
  }

  @optionalTypeArgs
  Future<T?> push<T extends Object?>(Widget widget) {
    return Navigator.of(this).push(
      MaterialPageRoute<T>(builder: (_) => widget),
    );
  }

  @optionalTypeArgs
  Future<T?> pushReplacementNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return Navigator.of(this).pushReplacementNamed<T?, TO>(
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  @optionalTypeArgs
  Future<T?> pushNamed<T extends Object?>(
    String routeName,
    Object arguments,
  ) {
    return Navigator.of(this).pushNamed<T?>(routeName, arguments: arguments);
  }

  @optionalTypeArgs
  Future<T?> popupAndPushNamed<T extends Object?>(
    String routeName,
    Object arguments,
  ) {
    Navigator.of(this).pop();
    return Navigator.of(this).pushNamed<T?>(routeName, arguments: arguments);
  }

  @optionalTypeArgs
  Future<T?> popupAndPush<T extends Object?>(Widget destination) {
    Navigator.of(this).pop();
    return Navigator.of(this).push(
      MaterialPageRoute<T>(builder: (_) => destination),
    );
  }

  popupAndRemoveUntil(String route) {
    Navigator.of(this).popUntil(ModalRoute.withName(route));
  }
}
