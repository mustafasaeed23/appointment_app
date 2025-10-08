import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class RecommendationDoctorWidget extends StatelessWidget {
  const RecommendationDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamedTransition(
          routeName: Routes.doctorsScreen,
          type: PageTransitionType.fade,
        );
      },
      child: Row(
        children: [
          Text("Recommended Doctors", style: FontsStyle.style18SemiBoldBlack),
          Spacer(),
          Text(
            "See All",
            style: FontsStyle.style10Blue.copyWith(fontSize: 14.r),
          ),
        ],
      ),
    );
  }
}
