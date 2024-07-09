import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class PetsCareTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayLarge: GoogleFonts.fredoka(
          fontSize: 32, fontWeight: FontWeight.w600, color: PetsCareColors.black),
      displayMedium: GoogleFonts.fredoka(
          fontSize: 20, fontWeight: FontWeight.w600, color: PetsCareColors.black),
      displaySmall: GoogleFonts.fredoka(
          fontSize: 16, fontWeight: FontWeight.w400, color: PetsCareColors.black),
      headlineMedium: GoogleFonts.fredoka(
          fontSize: 14, fontWeight: FontWeight.w400, color: PetsCareColors.black),
      headlineSmall: GoogleFonts.fredoka(
          fontSize: 12, fontWeight: FontWeight.w400, color: PetsCareColors.black),

      titleLarge: GoogleFonts.fredoka(
          fontSize: 32.0, fontWeight: FontWeight.w600, color: PetsCareColors.black),
      titleMedium: GoogleFonts.fredoka(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: PetsCareColors.black),
      titleSmall: GoogleFonts.fredoka(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: PetsCareColors.black));

  static TextTheme darkTextTheme = TextTheme(
      displayLarge: GoogleFonts.fredoka(
          fontSize: 32, fontWeight: FontWeight.w600, color: PetsCareColors.white),
      displayMedium: GoogleFonts.fredoka(
          fontSize: 20, fontWeight: FontWeight.w600, color: PetsCareColors.white),
      displaySmall: GoogleFonts.fredoka(
          fontSize: 16, fontWeight: FontWeight.w400, color: PetsCareColors.white),
      headlineMedium: GoogleFonts.fredoka(
          fontSize: 14, fontWeight: FontWeight.w400, color: PetsCareColors.white),
      headlineSmall: GoogleFonts.fredoka(
          fontSize: 12, fontWeight: FontWeight.w400, color: PetsCareColors.white),

      titleLarge: GoogleFonts.fredoka(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: PetsCareColors.white),
      titleMedium: GoogleFonts.fredoka(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: PetsCareColors.white),
      titleSmall: GoogleFonts.fredoka(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: PetsCareColors.white));
}
