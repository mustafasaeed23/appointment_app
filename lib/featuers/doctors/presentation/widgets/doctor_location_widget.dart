import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart' show FontsStyle;
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorLocationWidget extends StatelessWidget {
  const DoctorLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 15.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Practice Place', style: FontsStyle.style18SemiBoldBlack),
          SizedBox(height: 3.h),
          Text(
            '123 Medical Street, New York, USA',
            style: FontsStyle.style12grey.copyWith(fontSize: 12.r),
          ),
          SizedBox(height: 20.h),
          Text('Location Map', style: FontsStyle.style18SemiBoldBlack),
          SizedBox(height: 8.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.asset(
              Assets.mapImage,
              width: double.infinity,
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          CustomButton(text: "Make An Appointment", onPressed: () {}),
        ],
      ),
    );
  }
}
