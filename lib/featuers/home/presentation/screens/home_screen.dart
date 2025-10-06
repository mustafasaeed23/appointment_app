import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/doctor_card_widget.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/doctor_speciality_widget.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/doctors_list.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/recommendation_doctor_widget.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeWidget(),
              Image.asset(
                Assets.bannerImage,
                width: double.infinity,
                height: 197.h,
              ),
              SizedBox(height: 10.h),
              DoctorSpecialityWidget(),
              SizedBox(height: 10.h),
              RecommendationDoctorWidget(),
              SizedBox(height: 10.h),
              DoctorsList(),
            ],
          ),
        ),
      ),
    );
  }
}
