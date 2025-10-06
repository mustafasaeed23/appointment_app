import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavItem {
  final String? asset;
  final String? label;
  final Widget? customIcon;

  BottomNavItem({this.asset, this.label, this.customIcon})
    : assert(
        asset != null || customIcon != null,
        'Provide either an asset path or a customIcon widget.',
      );
}

class CustomBottomNavBar extends StatelessWidget {
  final List<BottomNavItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final Color selectedColor;
  final Color unselectedColor;
  final Color backgroundColor;
  final bool showLabels;
  final double iconSize;
  final double height;
  final double labelFontSize;

  const CustomBottomNavBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.selectedColor = AppColors.mainColor,
    this.unselectedColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.showLabels = false,
    this.iconSize = 24.0,
    this.height = 64.0,
    this.labelFontSize = 12.0,
  }) : assert(items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 7.h),

      child: SizedBox(
        height: height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final item = items[index];
            final isSelected = index == currentIndex;
            final iconColor = isSelected ? selectedColor : unselectedColor;

            Widget iconWidget;
            if (item.customIcon != null) {
              iconWidget = item.customIcon!;
            } else {
              iconWidget = SvgPicture.asset(
                item.asset!,
                width: iconSize,
                height: iconSize,
                color: iconColor,
              );
            }

            return Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () => onTap(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    iconWidget,
                    if (showLabels && item.label != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        item.label!,
                        style: TextStyle(
                          fontSize: labelFontSize,
                          color: iconColor,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
