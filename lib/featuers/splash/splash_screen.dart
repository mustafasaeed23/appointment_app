import 'dart:async';

import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/featuers/splash/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      context.pushTransition(
        type: PageTransitionType.fade,
        child: OnboardingScreen(),
      );
    });
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            SvgPicture.asset(Assets.splahBgLogo),
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset(
                Assets.splashLogo,
                width: 250.w,
                height: 72.h,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
