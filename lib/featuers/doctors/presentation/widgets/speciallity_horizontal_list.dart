import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityHorizontalList extends StatefulWidget {
  const SpecialityHorizontalList({super.key});

  @override
  State<SpecialityHorizontalList> createState() =>
      _SpecialityHorizontalListState();
}

class _SpecialityHorizontalListState extends State<SpecialityHorizontalList> {
  final List<String> specialityList = [
    "General",
    "Neurologic",
    "Radiology",
    "Pediatric",
    "Dentistry",
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Speciality", style: FontsStyle.style18SemiBoldBlack),
        SizedBox(height: 10.h),
        SizedBox(
          height: 35.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: specialityList.length,
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
                    child: Text(
                      specialityList[index],
                      style: FontsStyle.style12white.copyWith(
                        color: isSelected ? Colors.white : Colors.grey.shade600,
                      ),
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
