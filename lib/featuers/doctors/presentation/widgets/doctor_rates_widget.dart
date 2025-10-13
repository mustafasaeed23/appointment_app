import 'package:appointment_app/core/widgets/custom_button.dart';
import 'package:appointment_app/featuers/doctors/presentation/widgets/patient_rate_doctor_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorRatesWidget extends StatelessWidget {
  const DoctorRatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Scrollable list of patient reviews
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: 4,
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemBuilder: (context, index) => const PatientRateDoctorWidget(),
          ),
        ),

        SizedBox(height: 20.h),
        CustomButton(
          text: "Make An Appointment",
          onPressed: () {
            // TODO: Navigate to booking page or open bottom sheet
          },
        ),
      ],
    );
  }
}
