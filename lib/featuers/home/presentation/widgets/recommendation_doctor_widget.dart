import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorWidget extends StatelessWidget {
  const RecommendationDoctorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Recommended Doctors", style: FontsStyle.style18SemiBoldBlack),
            Spacer(),
            Text(
              "See All",
              style: FontsStyle.style10Blue.copyWith(fontSize: 14.r),
            ),
          ],
        ),
      ],
    );
  }
}
