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
        return routeScreen(child: const SplashScreen());

      case AppRoutes.onboardingScreen:
        return routeScreen(child: const OnboardingScreen());

      case AppRoutes.mainScreen:
        return routeScreen(child: const MainScreen());

      case AppRoutes.tncScreen:
        return routeScreen(child: const TermsAndConditionsScreen());

      case AppRoutes.privacyPolicyScreen:
        return routeScreen(child: const PrivacyPolicyScreen());

      case AppRoutes.chat1977Screen:
        return routeScreen(child: const Chat1977Screen());

      case AppRoutes.chat1978Screen:
        return routeScreen(child: const Chat1978Screen());

      case AppRoutes.chat1979Screen:
        return routeScreen(child: const Chat1979Screen());

      case AppRoutes.chat1980Screen:
        return routeScreen(child: const Chat1980Screen());

      case AppRoutes.chat1981Screen:
        return routeScreen(child: const Chat1981Screen());

      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) {
      return Text("No route defined for ${settings.name}");
    });
  }

  static Route<dynamic> routeScreen(
      {required Widget child, bool fullscreenDialog = false}) {
    return MaterialPageRoute(
      builder: (context) => SafeArea(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: child,
        ),
      ),
    );
  }
}
