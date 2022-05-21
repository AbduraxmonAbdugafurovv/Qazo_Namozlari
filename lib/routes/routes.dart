import 'package:flutter/material.dart';
import 'package:qazonamozlari/screens/auth/sign_up.dart';
import 'package:qazonamozlari/screens/onboarding/lang/lang_page.dart';
import 'package:qazonamozlari/screens/onboarding/views/onboarding_page.dart';
import 'package:qazonamozlari/screens/splashscreen/splash.dart';

class MyRoute {
  static final MyRoute _instance = MyRoute._init();
  static MyRoute get instance => _instance;
  MyRoute._init();

  Route? onGenrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "splash":
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case "lang":
        return MaterialPageRoute(builder: (context) => const LangPage());
      case "onboarding":
        return MaterialPageRoute(builder: (context) => const OnboardingPage());
      case "sign_up":
        return MaterialPageRoute(builder: (context) => const SingUpPage());
    }
    return null;
  }
}
