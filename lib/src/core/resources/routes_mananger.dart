import 'package:drosak/src/view/splash_screen/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreenRoute: (context) => const SplashScreen(),
  };
}

class RoutesName {
  static const String kSplashScreenRoute = '/kSplashScreenRoute';
}
