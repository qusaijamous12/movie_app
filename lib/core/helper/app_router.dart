import 'package:flutter/material.dart';
import '../../main.dart';

class AppRouter{

  static Future<dynamic> push(Widget widget) {
    return navKey.currentState!.push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static Future<dynamic> pushReplacement(Widget widget) {
    return navKey.currentState!.pushReplacement(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  static Future<dynamic> pushAndRemoveUntil(Widget widget) {
    return navKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget),
          (route) => false,
    );
  }

  static void pop([dynamic result]) {
    if (navKey.currentState!.canPop()) {
      navKey.currentState!.pop(result);
    }
  }

  static void popUntil(RoutePredicate predicate) {
    navKey.currentState!.popUntil(predicate);
  }
}