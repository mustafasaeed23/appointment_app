import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        border: Border.all(color: Colors.white, width: 4.w),
        borderRadius: BorderRadius.all(Radius.circular(15.r)),
      ),
      child: SvgPicture.asset(Assets.searchIcon, fit: BoxFit.scaleDown),
    );
  }
}
