import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/core/widgets/custom_circle_button.dart';
import 'package:appointment_app/core/widgets/custom_text_form_field.dart';
import 'package:appointment_app/core/widgets/seprator_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 35.h),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.of(context).size.height -
                    70.h, // subtract padding
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Create Account", style: FontsStyle.style25Blue),
                    SizedBox(height: 10.h),
                    Text(
                      "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                      style: FontsStyle.style12grey.copyWith(fontSize: 13.r),
                    ),
                    SizedBox(height: 20.h),
                    CustomTextFormField(
                      label: "",
                      hint: "Name",
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 5.h),
                    CustomTextFormField(
                      label: "",
                      hint: "Email",
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 5.h),
                    CustomTextFormField(
                      label: "",
                      hint: "Phone",
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
                    SizedBox(height: 5.h),
                    CustomTextFormField(
                      label: "",
                      hint: "Confirm Password",
                      controller: TextEditingController(),
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(height: 20.h),
                    CustomButton(text: "Create Account", onPressed: () {}),
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
                          "Already have an account? ",
                          style: FontsStyle.style12grey.copyWith(
                            fontSize: 13.r,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Login",
                            style: FontsStyle.style10Blue.copyWith(
                              fontSize: 13.r,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
