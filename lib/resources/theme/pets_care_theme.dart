import 'package:flutter/material.dart';
import 'package:pets_care/resources/theme/text_theme.dart';

import 'colors.dart';

class PetsCareTheme {
  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        textTheme: PetsCareTextTheme.lightTextTheme,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: PetsCareColors.white,
          foregroundColor: PetsCareColors.black,
        ),
        scaffoldBackgroundColor: PetsCareColors.white,
        cardTheme: const CardTheme(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 4,
          shadowColor: PetsCareColors.shadow,
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        tabBarTheme: TabBarTheme(
          labelStyle: PetsCareTextTheme.lightTextTheme.titleSmall,
          unselectedLabelStyle: PetsCareTextTheme.lightTextTheme.titleSmall,
          labelColor: PetsCareColors.black,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(width: 1, color: PetsCareColors.primary),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: PetsCareColors.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: PetsCareColors.primary,
            disabledBackgroundColor: const Color(0xFFCCCCCC),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(44)),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            textStyle: PetsCareTextTheme.lightTextTheme.titleMedium
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
            side: const BorderSide(color: PetsCareColors.primary),
          ),
        ),
        chipTheme: const ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
            side: BorderSide(color: Colors.black, width: 0.5),
          ),
          backgroundColor: PetsCareColors.white,
        ),
        snackBarTheme: const SnackBarThemeData(
          actionTextColor: PetsCareColors.white,
          disabledActionTextColor: PetsCareColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          backgroundColor: PetsCareColors.black,
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
              borderSide: BorderSide(color: PetsCareColors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: PetsCareColors.primary, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: PetsCareColors.red, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: PetsCareColors.white, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ));
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      textTheme: PetsCareTextTheme.darkTextTheme,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: PetsCareColors.black,
        foregroundColor: PetsCareColors.white,
      ),
      scaffoldBackgroundColor: PetsCareColors.gray,
      cardTheme: const CardTheme(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      tabBarTheme: TabBarTheme(
        labelStyle: PetsCareTextTheme.darkTextTheme.titleSmall,
        unselectedLabelStyle: PetsCareTextTheme.darkTextTheme.titleSmall,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: PetsCareColors.white,
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(width: 1, color: PetsCareColors.white),
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
        backgroundColor: PetsCareColors.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: PetsCareColors.primary,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          minimumSize: const Size(140, 40),
          textStyle: PetsCareTextTheme.darkTextTheme.titleSmall
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
