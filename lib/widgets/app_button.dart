import 'package:flutter/cupertino.dart';
import 'package:pets_care/resource/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      required this.text,
      this.textStyle,
      this.suffixIcon,
      this.prefixIcon,
      this.width,
      this.height,
      this.color,
      required this.onPressed});

  final String text;
  final TextStyle? textStyle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? width;
  final double? height;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? 45,
      decoration: BoxDecoration(
          color: color,
          gradient: color == null ? AppColors.primaryGradient : null,
          borderRadius: BorderRadius.circular(10)),
      child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            onPressed.call();
          },
          child: _buildButton()),
    );
  }

  Widget _buildButton() {
    if (prefixIcon != null) {
      return _buildButtonWithPrefix();
    }
    if (suffixIcon != null) {
      return _buildButtonWithSuffix();
    }
    return Text(text, style: textStyle);
  }

  Padding _buildButtonWithPrefix() {
    return Padding(
      padding: const EdgeInsets.only(left: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: 20, height: 20, child: prefixIcon!),
          const SizedBox(width: 10),
          Text(text, style: textStyle)
        ],
      ),
    );
  }

  Row _buildButtonWithSuffix() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 1),
        Text(text, style: textStyle),
        suffixIcon!
      ],
    );
  }
}
