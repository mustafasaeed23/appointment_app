import 'package:appointment_app/core/theme/font_style.dart';
import 'package:appointment_app/core/widgets/back_icon.dart';
import 'package:flutter/material.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment', style: FontsStyle.style18SemiBoldBlack),
        centerTitle: true,
        leading: Padding(padding: const EdgeInsets.all(8.0), child: BackIcon()),
      ),
    );
  }
}
