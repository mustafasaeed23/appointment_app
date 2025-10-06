import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/core/widgets/custom_circle_button.dart';
import 'package:appointment_app/core/widgets/custom_text_form_field.dart';
import 'package:appointment_app/core/widgets/seprator_widget.dart';
import 'package:appointment_app/featuers/auth/presentation/widgets/remember_me_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 35.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              Text("Welcome Back", style: FontsStyle.style25Blue),
              SizedBox(height: 10.h),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: FontsStyle.style12grey,
              ),
              SizedBox(height: 20.h),
              CustomTextFormField(
                label: "",
                hint: "Email",
                controller: TextEditingController(),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 5.h),
              CustomTextFormField(
                label: "",
                hint: "Password",
                controller: TextEditingController(),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 10.h),
              RememberMeWidget(),
              SizedBox(height: 20.h),
              CustomButton(
                text: "Login",
                onPressed: () {
                  context.pushNamedTransition(
                    routeName: Routes.layoutScreen,
                    type: PageTransitionType.fade,
                  );
                },
              ),
              SizedBox(height: 20.h),
              OrSeparator(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleButton(assetName: Assets.googleIcon),
                  SizedBox(width: 15.w),
                  CustomCircleButton(assetName: Assets.facebookIcon),
                  SizedBox(width: 15.w),
                  CustomCircleButton(assetName: Assets.appleIcon),
                ],
              ),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account yet? ",
                    style: FontsStyle.style12grey.copyWith(fontSize: 13.sp),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).pushNamed(Routes.signUpScreen);
                      context.pushNamedTransition(
                        routeName: Routes.registerScreen,
                        type: PageTransitionType.rightToLeftWithFade,
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: FontsStyle.style12grey.copyWith(
                        color: Colors.blue,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
