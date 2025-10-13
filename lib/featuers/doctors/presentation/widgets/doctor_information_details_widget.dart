import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorInformationDetailsWidget extends StatelessWidget {
  const DoctorInformationDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(Assets.doctorDetailsImage, width: 100, height: 100),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Dr Stella Kane', style: FontsStyle.style18SemiBoldBlack),
              SizedBox(height: 5),
              Text(
                'Heart Surgeon - Flower Hospitals',
                style: FontsStyle.style12grey.copyWith(fontSize: 12.r),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 16),
                  SizedBox(width: 4),
                  Text(
                    '4.9',
                    style: FontsStyle.style12grey.copyWith(
                      fontSize: 12.r,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    '(124 Reviews)',
                    style: FontsStyle.style12grey.copyWith(fontSize: 12.r),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(width: 8.w),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            Assets.messageIcon,
            width: 20.w,
            height: 20.h,
          ),
        ),
      ],
    );
  }
}
