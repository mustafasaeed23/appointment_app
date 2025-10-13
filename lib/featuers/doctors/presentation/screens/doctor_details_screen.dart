import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/back_icon.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/doctor_about_widget.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/doctor_information_details_widget.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/doctor_location_widget.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/doctor_rates_widget.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/patient_rate_doctor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dr Stella Kane', style: FontsStyle.style18SemiBoldBlack),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: BackIcon(),
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 12.0.h),
          child: Column(
            children: [
              const DoctorInformationDetailsWidget(),
              SizedBox(height: 20.h),
              TabBar(
                labelColor: AppColors.mainColor,
                indicatorColor: AppColors.mainColor,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.tab,
                labelStyle: FontsStyle.style14Black,
                automaticIndicatorColorAdjustment: false,

                tabs: const [
                  Tab(text: 'About'),
                  Tab(text: 'Location'),
                  Tab(text: 'Reviews'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    DoctorAboutWidget(),

                    DoctorLocationWidget(),

                    DoctorRatesWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
