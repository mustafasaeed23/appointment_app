import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class DoctorCardWidget extends StatelessWidget {
  const DoctorCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(Assets.doctor1, width: 110.w, height: 110.h),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Stella Kane",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  FittedBox(
                    child: Text(
                      "Heart Surgeon | Flower Hospitals",
                      style: FontsStyle.style12grey.copyWith(
                        fontSize: 16.r,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 16.sp),
                      SizedBox(width: 5.w),
                      Text(
                        "4.9 (124 Reviews)",
                        style: FontsStyle.style12grey.copyWith(
                          fontSize: 11.r,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
