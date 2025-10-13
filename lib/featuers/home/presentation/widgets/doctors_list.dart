import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/featuers/home/presentation/widgets/doctor_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      itemBuilder: (context, index) {
        return InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            context.pushNamedTransition(
              routeName: Routes.doctorDetailsScreen,
              type: PageTransitionType.fade,
            );
          },
          child: DoctorCardWidget(),
        );
      },
    );
  }
}
