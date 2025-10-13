import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class DoctorAboutWidget extends StatelessWidget {
  const DoctorAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 15.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('About me', style: FontsStyle.style18SemiBoldBlack),
          SizedBox(height: 3.h),
          Text(
            'Dr. Stella Kane is a highly experienced cardiologist with over 10 years of practice. She specializes in advanced cardiac care and patient wellness.',
            style: FontsStyle.style12grey.copyWith(fontSize: 12.r),
          ),
          SizedBox(height: 20.h),
          Text('Working Time', style: FontsStyle.style18SemiBoldBlack),
          SizedBox(height: 3.h),
          Text(
            'Mon - Fri, 8:00 AM - 5:00 PM',
            style: FontsStyle.style12grey.copyWith(fontSize: 13.r),
          ),
          SizedBox(height: 20.h),
          Text('STR', style: FontsStyle.style18SemiBoldBlack),
          SizedBox(height: 3.h),
          Text(
            '123 456 789',
            style: FontsStyle.style12grey.copyWith(fontSize: 13.r),
          ),
          SizedBox(height: 20.h),
          Text('Pengalaman Praktik', style: FontsStyle.style18SemiBoldBlack),
          SizedBox(height: 3.h),
          Text(
            '10 years of experience in cardiology and patient care.',
            style: FontsStyle.style12grey.copyWith(fontSize: 12.r),
          ),
          Spacer(),
          CustomButton(
            text: "Make An Appointment",
            onPressed: () {
              context.pushNamedTransition(
                routeName: Routes.bookAppointmentScreen,
                type: PageTransitionType.bottomToTop,
              );
            },
          ),
        ],
      ),
    );
  }
}
