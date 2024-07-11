import 'package:flutter/material.dart';
import 'package:pets_care/resource/theme/app_text_theme.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        textTheme: AppTextTheme.lightTextTheme,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.white,
          foregroundColor: AppColors.black,
        ),
        scaffoldBackgroundColor: AppColors.white,
        cardTheme: const CardTheme(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 4,
          shadowColor: AppColors.shadow,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelStyle: AppTextTheme.lightTextTheme.titleSmall,
          unselectedLabelStyle: AppTextTheme.lightTextTheme.titleSmall,
          labelColor: AppColors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 1, color: AppColors.primary),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: AppColors.primary,
            disabledBackgroundColor: const Color(0xFFCCCCCC),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(44)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            textStyle: AppTextTheme.lightTextTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            minimumSize: const Size(44, 44),
            side: const BorderSide(color: AppColors.primary),
          ),
        ),
        chipTheme: const ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            side: BorderSide(color: Colors.black, width: 0.5),
          ),
          backgroundColor: AppColors.white,
        ),
        snackBarTheme: const SnackBarThemeData(
          actionTextColor: AppColors.white,
          disabledActionTextColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          backgroundColor: AppColors.black,
        ),
        listTileTheme: const ListTileThemeData(
          contentPadding: EdgeInsets.zero,
          minVerticalPadding: 0.0,
          dense: true,
          horizontalTitleGap: 0.0,
          minLeadingWidth: 0,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.all(12),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.red, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ));
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.white,
      ),
      scaffoldBackgroundColor: AppColors.gray,
      cardTheme: const CardTheme(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelStyle: AppTextTheme.darkTextTheme.titleSmall,
        unselectedLabelStyle: AppTextTheme.darkTextTheme.titleSmall,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: AppColors.white,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 1, color: AppColors.white),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.zero,
        minVerticalPadding: 0.0,
        dense: true,
        horizontalTitleGap: 0.0,
        minLeadingWidth: 0,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          minimumSize: const Size(140, 40),
          textStyle: AppTextTheme.darkTextTheme.titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
