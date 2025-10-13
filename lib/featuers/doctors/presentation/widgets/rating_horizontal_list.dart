import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingHorizontalList extends StatefulWidget {
  const RatingHorizontalList({super.key});

  @override
  State<RatingHorizontalList> createState() => _RatingHorizontalListState();
}

class _RatingHorizontalListState extends State<RatingHorizontalList> {
  final List<String> ratingList = ["All", "1", "2", "3", "4", "5"];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Rating", style: FontsStyle.style18SemiBoldBlack),
        SizedBox(height: 10.h),
        SizedBox(
          height: 35.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: ratingList.length,
            separatorBuilder: (_, __) => SizedBox(width: 10.w),
            itemBuilder: (context, index) {
              final isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  width: 74.w,
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                    vertical: 5.h,
                  ),
                  decoration: BoxDecoration(
                    color:
                        isSelected ? AppColors.mainColor : Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Assets.starIcon,
                          color:
                              isSelected ? Colors.white : Colors.grey.shade600,
                        ),
                        SizedBox(width: 5.w),

                        Text(
                          ratingList[index],
                          style: FontsStyle.style12white.copyWith(
                            fontSize: 14.r,
                            color:
                                isSelected
                                    ? Colors.white
                                    : Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
