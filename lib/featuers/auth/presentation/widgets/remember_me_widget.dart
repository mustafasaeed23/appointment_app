import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMeWidget extends StatefulWidget {
  const RememberMeWidget({super.key});

  @override
  State<RememberMeWidget> createState() => _RememberMeWidgetState();
}

class _RememberMeWidgetState extends State<RememberMeWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Checkbox(
              activeColor: AppColors.mainColor,
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value ?? false;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            Text(
              'Remember Me',
              style: FontsStyle.style12grey.copyWith(fontSize: 13.r),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          child: Text(
            'Forgot Password?',
            style: FontsStyle.style12grey.copyWith(
              fontSize: 12.r,
              color: AppColors.mainColor,
            ),
          ),
        ),
      ],
    );
  }
}
