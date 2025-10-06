import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({
    super.key,
    required this.isRead,
    required this.topic,
    required this.iconAsset,
    this.timeAgo = '2h ago',
    this.message,
  });

  final bool isRead;
  final String topic;
  final String iconAsset;
  final String timeAgo;
  final String? message;

  @override
  Widget build(BuildContext context) {
    Color bgColor;
    String finalIconAsset = iconAsset;

    switch (topic.trim()) {
      case 'Appointment Success':
        bgColor = AppColors.lightGreenColor;
        finalIconAsset = Assets.greenCalenderIcon;
        break;
      case 'Schedule Changed':
        bgColor = AppColors.lightBlueColor;
        finalIconAsset = Assets.blueCalenderIcon;
        break;
      case 'Video Call Appointment':
        bgColor = AppColors.lightGreenColor;
        finalIconAsset = Assets.videoIcon;
        break;
      case 'Appointment Cancelled':
        bgColor = AppColors.lightRedColor;
        finalIconAsset = Assets.redCalenderIcon;
        break;
      case 'New Payment Added!':
        bgColor = AppColors.lightBlueColor;
        finalIconAsset = Assets.walletIcon;
        break;
      default:
        bgColor = const Color(0xFFF7F9FC);
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: isRead ? Colors.grey.shade100 : Colors.white,
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200, width: 0.5),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Icon
          Container(
            width: 46.w,
            height: 46.h,
            decoration: BoxDecoration(color: bgColor, shape: BoxShape.circle),
            child: SvgPicture.asset(
              finalIconAsset,
              width: 26.w,
              height: 26.h,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: FontsStyle.style18SemiBoldBlack.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  message ??
                      'Congratulations — your appointment is confirmed! We’re looking forward to meeting you soon.',
                  style: FontsStyle.style12grey.copyWith(fontSize: 13.sp),
                  maxLines: 4,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                timeAgo,
                style: FontsStyle.style12grey.copyWith(fontSize: 11.sp),
              ),
              SizedBox(height: 8.h),
              if (!isRead)
                Container(
                  width: 8.w,
                  height: 8.h,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
