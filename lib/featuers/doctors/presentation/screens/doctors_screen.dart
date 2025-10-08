import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/back_icon.dart';
import 'package:appointment_app/core/widgets/search_widget.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recommendation Doctor',
          style: FontsStyle.style18SemiBoldBlack,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BackIcon(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.h),
        child: SingleChildScrollView(
          child: Column(
            children: [SearchWidget(), SizedBox(height: 25.h), DoctorsList()],
          ),
        ),
      ),
    );
  }
}
