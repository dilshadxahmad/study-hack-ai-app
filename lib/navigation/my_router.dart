import 'package:flutter/material.dart';
import 'package:study_hack_ai/navigation/app_routes.dart';
import 'package:study_hack_ai/screens/chat_1977_screen.dart';
import 'package:study_hack_ai/screens/chat_1978_screen.dart';
import 'package:study_hack_ai/screens/chat_1979_screen.dart';
import 'package:study_hack_ai/screens/chat_1980_screen.dart';
import 'package:study_hack_ai/screens/chat_1981_screen.dart';
import 'package:study_hack_ai/screens/main_screen.dart';
import 'package:study_hack_ai/screens/onboarding_screen.dart';
import 'package:study_hack_ai/screens/privacy_policy_screen.dart';
import 'package:study_hack_ai/screens/splash_screen.dart';
import 'package:study_hack_ai/screens/tnc_screen.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case AppRoutes.onboardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case AppRoutes.mainScreen:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case AppRoutes.tncScreen:
        return MaterialPageRoute(
          builder: (context) => const TermsAndConditionsScreen(),
        );
      case AppRoutes.privacyPolicyScreen:
        return MaterialPageRoute(
          builder: (context) => const PrivacyPolicyScreen(),
        );
      case AppRoutes.chat1977Screen:
        return MaterialPageRoute(
          builder: (context) => const Chat1977Screen(),
        );
      case AppRoutes.chat1978Screen:
        return MaterialPageRoute(
          builder: (context) => const Chat1978Screen(),
        );
      case AppRoutes.chat1979Screen:
        return MaterialPageRoute(
          builder: (context) => const Chat1979Screen(),
        );
      case AppRoutes.chat1980Screen:
        return MaterialPageRoute(
          builder: (context) => const Chat1980Screen(),
        );
      case AppRoutes.chat1981Screen:
        return MaterialPageRoute(
          builder: (context) => const Chat1981Screen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
