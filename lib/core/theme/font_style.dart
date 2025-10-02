import 'package:appointment_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FontsStyle {
  static TextStyle style10Blue = GoogleFonts.poppins(
    fontSize: 10,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle style25Blue = GoogleFonts.poppins(
    fontSize: 25,
    color: AppColors.mainColor,
    fontWeight: FontWeight.w700,
  );
  static TextStyle style12grey = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.grey,
    fontWeight: FontWeight.w500,
  );
   static TextStyle style12white = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );
}
