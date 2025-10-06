import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/back_icon.dart';
import 'package:appointment_app/featuers/notifications/presentation/widgets/count_widget.dart';
import 'package:appointment_app/featuers/notifications/presentation/widgets/notifications_head_widget.dart';
import 'package:appointment_app/featuers/notifications/presentation/widgets/notifications_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(padding: const EdgeInsets.all(8.0), child: BackIcon()),
        title: Text('Notifications', style: FontsStyle.style18black),
        centerTitle: true,
        actions: [
          Padding(padding: const EdgeInsets.all(8.0), child: CountWidget()),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NotificationsHeadWidget(),
          NotificationsWidget(
            isRead: true,
            topic: 'New Schedule',
            iconAsset: Assets.blueCalenderIcon,
          ),
          NotificationsWidget(
            isRead: false,
            topic: 'Appointment Success',
            iconAsset: Assets.greenCalenderIcon,
          ),
        ],
      ),
    );
  }
}
