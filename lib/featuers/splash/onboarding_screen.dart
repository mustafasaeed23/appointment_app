import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/utils/exctenstions.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/featuers/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80.h),

            // App Logo
            Center(
              child: Image.asset(
                Assets.splashLogo,
                width: 141.w,
                height: 38.h,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 40.h),
            SizedBox(
              height: 340.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SvgPicture.asset(
                    Assets.splahBgLogo,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    Assets.doctorImage,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    height: 120.h,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.white, Colors.white.withOpacity(0.0)],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Best Doctor \n Appointment App",
              style: FontsStyle.style25Blue,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.h),
            Text(
              "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
              style: FontsStyle.style12grey,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.h),
            CustomButton(
              text: "Get Started",
              onPressed: () {
                context.pushNamed(Routes.loginScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
