import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55.w,
      height: 27.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.r),
        color: AppColors.mainColor,
      ),
      child: Center(
        child: Text(
          "2 new ",
          style: FontsStyle.style12white.copyWith(fontSize: 11.r),
        ),
      ),
    );
  }
}
