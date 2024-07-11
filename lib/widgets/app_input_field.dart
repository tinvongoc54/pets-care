import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets_care/resource/localization/l10n.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';

class AppInputField extends StatelessWidget {
  const AppInputField(
      {super.key,
      required this.hint,
      required this.icon,
      this.isPassword = false});

  final String hint;
  final IconData icon;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.gray, borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: AppColors.shadow),
          hintText: hint,
          hintStyle: mediumLargeStyle(color: AppColors.grayLight),
        ),
        obscureText: isPassword,
      ),
    );
  }
}
