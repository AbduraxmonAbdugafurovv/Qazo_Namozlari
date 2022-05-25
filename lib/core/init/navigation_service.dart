import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  NavigationService._init();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<dynamic> pushNamed(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }
  Future<dynamic> pushNamedUnreUntill(String routeName){
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (route) => false);
  }
  Future<dynamic> pushNamedRepl(String routeName){
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }
  void pop(String routeName){
    return navigatorKey.currentState!.pop();
  }
}
