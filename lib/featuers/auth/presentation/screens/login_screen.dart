import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 35.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
          ],
        ),
      ),
    );
  }
}
