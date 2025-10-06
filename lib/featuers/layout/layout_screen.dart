import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/assets.dart';
import 'package:appointment_app/featuers/home/presentation/screens/home_screen.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/bottom_nav_bar_widget.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/floating_action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomeScreen(),
    Center(child: Text('Chat')),
    Center(child: Text('Search')),

    Center(child: Text('Calendar')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = 2;
          });
        },
        child: FloatingActionButtonWidget(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,
      body: _pages[_currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        items: [
          BottomNavItem(asset: Assets.homeIcon, label: 'Home'),
          BottomNavItem(asset: Assets.chatIcon, label: 'Chat'),
          BottomNavItem(customIcon: SizedBox(width: 30.w)), // center gap
          BottomNavItem(asset: Assets.calendarIcon, label: 'Calendar'),
          BottomNavItem(asset: Assets.profileIcon, label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
