import 'package:drosak/src/view/on_boarding/screen/on_boarding_screen.dart';
import 'package:drosak/src/view/splash_screen/screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';

class RoutesManager {
  static Map<String, WidgetBuilder> routes = {
    RoutesName.kSplashScreenRoute: (context) => const SplashScreen(),
    RoutesName.kOnBoardingScreenRoute: (context) => const OnBoardingScreen(),

  };
}

class RoutesName {
  static const String kSplashScreenRoute = '/kSplashScreenRoute';
  static const String kOnBoardingScreenRoute = '/kOnBoardingScreenRoute';

}
