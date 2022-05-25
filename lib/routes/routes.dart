import 'package:flutter/material.dart';
import 'package:qazonamozlari/screens/auth/view/sign_in.dart';
import 'package:qazonamozlari/screens/auth/view/sign_up.dart';
import 'package:qazonamozlari/screens/calculation/confirm_page.dart';
import 'package:qazonamozlari/screens/calculation/data_page.dart';
import 'package:qazonamozlari/screens/onboarding/lang/lang_page.dart';
import 'package:qazonamozlari/screens/onboarding/views/onboarding_page.dart';
import '../screens/calculation/firstquestion.dart';
import '../screens/splash/splash.dart';

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
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case "sign_in":
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case "first_question":
        return MaterialPageRoute(builder: (context) => const FirstQuestion());
      case "confirm":
        return MaterialPageRoute(builder: (context) => const ConfirmPage());
      case "data_questions":
        return MaterialPageRoute(builder: (context) => const DataPage());
      case "clock":
        return MaterialPageRoute(builder: (context) => const DataPage());
    }
    return null;
  }
}
