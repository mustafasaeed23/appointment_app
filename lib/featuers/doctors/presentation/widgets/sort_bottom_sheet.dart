import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/rating_horizontal_list.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/speciallity_horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSortBottomSheet {
  static void doctorSortBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: double.infinity,
          height: 350.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(31.r),
              topRight: Radius.circular(31.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 15.w),
            child: Column(
              children: [
                SizedBox(height: 25.h),
                Center(
                  child: Text(
                    "Sort by",
                    style: FontsStyle.style18SemiBoldBlack,
                  ),
                ),
                SizedBox(height: 10.h),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 1.w,
                  height: 3.h,
                ),
                SizedBox(height: 10.h),
                SpecialityHorizontalList(),
                SizedBox(height: 20.h),
                RatingHorizontalList(),
                SizedBox(height: 20.h),
                Spacer(),
                CustomButton(text: "Done", onPressed: () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}
