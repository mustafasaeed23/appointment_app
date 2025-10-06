import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsHeadWidget extends StatelessWidget {
  const NotificationsHeadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 10.h),
      margin: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              "Today",
              style: FontsStyle.style12grey.copyWith(fontSize: 14.r),
            ),
          ),
          Spacer(),
          Expanded(
            child: Text(
              "Make all as read",
              style: FontsStyle.style10Blue.copyWith(fontSize: 12.r),
            ),
          ),
        ],
      ),
    );
  }
}
