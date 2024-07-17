import 'package:flutter/material.dart';

class AppColors {
  static const red = Color(0xFFE54D4D);
  static const gray = Color(0xFFF1F2F6);
  static const grayLight = Color(0xFFA1A1A1);
  static const grayD4 = Color(0xFFD4D4D4);
  static const black = Color(0xFF171717);
  static const white = Colors.white;
  static const shadow = Color(0x5EB9B6C6);
  static const green = Colors.green;
  static const yellow = Color(0xFF171717);
  static const purple = Color(0xFF7A86AE);

  static const black_10 = Color(0x1A171717);

  static const primary = Color(0xFF5CB15A);
  static const primaryLight = Color(0xFF73D370);
  static const primaryDark = Color(0xCC1E1E1E);
  static const primaryDark_50 = Color(0x801E1E1E);

  static const secondaryWhite = Color(0xFFFFFFFF);
  static const secondaryGray = Color(0xFFD4D4D4);
  static const secondaryBlack = Color(0xFF000000);

  static const line = Color(0xFFEFEEEF);
  static const imagePlaceHolder = Color(0xFFD9D9D9);

  static const contentBlack = Color(0xFF404040);

  static const colorD7AE53 = Color(0xFFD7AE53);
  static const color7A86AE = Color(0xFF7A86AE);
  static const colorE28E69 = Color(0xFFE28E69);

  static const primaryGradient = LinearGradient(
    colors: [primary, primaryLight],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const backgroundTopProfile = LinearGradient(
    colors: [primaryDark_50, primaryDark],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const boxShadow = [
    BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(2, 3))
  ];
}
