import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PatientRateDoctorWidget extends StatelessWidget {
  const PatientRateDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 15.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundImage: AssetImage(Assets.patientImage),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jane Cooper', style: FontsStyle.style14Black),
                SizedBox(height: 5),
                Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.0.w),
                      child: SvgPicture.asset(
                        Assets.starIcon,
                        color: Colors.yellow,
                        width: 16.w,
                        height: 16.h,
                      ),
                    ),
                  ),
                ),
                Text(
                  "As someone who lives in a remote area with limited access to healthcare, this telemedicine app has been a game changer for me. I can easily schedule virtual appointments with doctors and get the care I need without having to travel long distances.",
                  style: FontsStyle.style12grey.copyWith(fontSize: 12.r),
                ),
              ],
            ),
          ),
          SizedBox(width: 8.w),
          Text('Today', style: FontsStyle.style12grey.copyWith(fontSize: 12.r)),
        ],
      ),
    );
  }
}
