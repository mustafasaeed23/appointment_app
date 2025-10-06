import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/notifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Mustafa", style: FontsStyle.style18black),
            SizedBox(height: 4.h),
            Text(
              "How are you Today?",
              style: FontsStyle.style12grey.copyWith(fontSize: 15),
            ),
          ],
        ),
        Spacer(),
        NotificationsWidget(),
      ],
    );
  }
}
