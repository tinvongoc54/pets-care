import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.fredoka(
          fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.black),
      displayMedium: GoogleFonts.fredoka(
          fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.black),
      displaySmall: GoogleFonts.fredoka(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.black),
      headlineMedium: GoogleFonts.fredoka(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black),
      headlineSmall: GoogleFonts.fredoka(
          fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.black),

      titleLarge: GoogleFonts.fredoka(
          fontSize: 32.0, fontWeight: FontWeight.w600, color: AppColors.black),
      titleMedium: GoogleFonts.fredoka(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.black),
      titleSmall: GoogleFonts.fredoka(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.black));

  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.fredoka(
          fontSize: 32, fontWeight: FontWeight.w600, color: AppColors.white),
      displayMedium: GoogleFonts.fredoka(
          fontSize: 20, fontWeight: FontWeight.w600, color: AppColors.white),
      displaySmall: GoogleFonts.fredoka(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineMedium: GoogleFonts.fredoka(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineSmall: GoogleFonts.fredoka(
          fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.white),

      titleLarge: GoogleFonts.fredoka(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.white),
      titleMedium: GoogleFonts.fredoka(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.white),
      titleSmall: GoogleFonts.fredoka(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.white));
}
