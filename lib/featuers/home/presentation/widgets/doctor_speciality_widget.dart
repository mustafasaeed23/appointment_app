import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityWidget extends StatelessWidget {
  const DoctorSpecialityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> specialities = [
      {'title': 'General', 'icon': Assets.generalIcon},
      {'title': 'Neurologic', 'icon': Assets.neurologicIcon},
      {'title': 'Pediatric', 'icon': Assets.pediatricIcon},
      {'title': 'Radiology', 'icon': Assets.radiologyIcon},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text("Doctor Speciality", style: FontsStyle.style18SemiBoldBlack),
            Spacer(),
            Text(
              "See All",
              style: FontsStyle.style10Blue.copyWith(fontSize: 14.r),
            ),
          ],
        ),
        SizedBox(height: 7.h),
        SizedBox(
          height: 110.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: specialities.length,
            separatorBuilder: (_, __) => SizedBox(width: 15.w),
            itemBuilder: (context, index) {
              final speciality = specialities[index];
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 70.w,
                    height: 70.w,
                    decoration: BoxDecoration(
                      color: AppColors.lightBlueColor,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(15.w),
                    child: Image.asset(
                      speciality['icon']!,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    speciality['title']!,
                    style: FontsStyle.style12grey.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
