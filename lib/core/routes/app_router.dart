import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/featuers/auth/presentation/screens/login_screen.dart';
import 'package:appointment_app/featuers/auth/presentation/screens/register_screen.dart';
import 'package:appointment_app/featuers/splash/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      
      case Routes.onBoardingScreen:
        return PageTransition(
          child: const OnboardingScreen(),
          type: PageTransitionType.fade,
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.loginScreen:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.theme,
          alignment: Alignment.center,
          settings: settings,
        );
      case Routes.registerScreen:
        return PageTransition(
          child: const RegisterScreen(),
          type: PageTransitionType.theme,
          alignment: Alignment.center,
          settings: settings,
        );
      default:
        throw Exception('Route not found: ${settings.name}');
    }
  }
}
