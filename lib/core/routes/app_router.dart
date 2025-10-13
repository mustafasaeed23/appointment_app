import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/featuers/appointments/presentation/screens/book_appointment_screen.dart';
import 'package:appointment_app/featuers/auth/presentation/screens/login_screen.dart';
import 'package:appointment_app/featuers/auth/presentation/screens/register_screen.dart';
import 'package:appointment_app/featuers/doctors/presentation/screens/doctor_details_screen.dart';
import 'package:appointment_app/featuers/doctors/presentation/screens/doctors_screen.dart';
import 'package:appointment_app/featuers/layout/layout_screen.dart';
import 'package:appointment_app/featuers/notifications/presentation/screens/notifications_screen.dart';
import 'package:appointment_app/featuers/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return PageTransition(
          child: const OnboardingScreen(),
          type: PageTransitionType.fade,
          settings: settings,
        );
      case Routes.loginScreen:
        return PageTransition(
          child: const LoginScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      case Routes.registerScreen:
        return PageTransition(
          child: const RegisterScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      case Routes.layoutScreen:
        return PageTransition(
          child: const LayoutScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      case Routes.notificationsScreen:
        return PageTransition(
          child: const NotificationsScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      case Routes.doctorsScreen:
        return PageTransition(
          child: const DoctorsScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      case Routes.doctorDetailsScreen:
        return PageTransition(
          child: const DoctorDetailsScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      case Routes.bookAppointmentScreen:
        return PageTransition(
          child: const BookAppointmentScreen(),
          type: PageTransitionType.theme,
          settings: settings,
        );
      default:
        throw Exception('Route not found: ${settings.name}');
    }
  }
}
