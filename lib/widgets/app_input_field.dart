import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets_care/resource/localization/l10n.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';

class AppInputField extends StatelessWidget {
  const AppInputField(
      {super.key,
      required this.hint,
      this.icon,
      this.isPassword = false,
      this.controller,
      this.backgroundColor,
      this.hintStyle,
      this.contentStyle});

  final String hint;
  final IconData? icon;
  final bool isPassword;
  final TextEditingController? controller;
  final Color? backgroundColor;
  final TextStyle? hintStyle;
  final TextStyle? contentStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.gray, borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: icon != null ? Icon(icon, color: AppColors.shadow) : null,
          hintText: hint,
          hintStyle: hintStyle ?? mediumLargeStyle(color: AppColors.grayLight),
        ),
        obscureText: isPassword,
        controller: controller,
        style: contentStyle ?? mediumLargeStyle(),
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
      ),
    );
  }
}
