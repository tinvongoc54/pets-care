import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';
import 'package:pets_care/router/route_page.dart';

import '../../../resource/localization/l10n.dart';

class Slide3 extends StatelessWidget {
  const Slide3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(AppTranslations.of(context).provide,
            style: superLargeStyle(fontWeight: FontWeight.w600)),
        Text(AppTranslations.of(context).slide3_1,
            textAlign: TextAlign.center,
            style: mediumLargeStyle(color: AppColors.grayLight)),
        Text(AppTranslations.of(context).slide3_2,
            textAlign: TextAlign.center,
            style: mediumLargeStyle(color: AppColors.grayLight)),
        Container(
          decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CupertinoButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, LOGIN, (route) => false);
            },
            padding: EdgeInsets.zero,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 1),
                  Text(AppTranslations.of(context).get_started,
                      style: mediumLargeStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white)
                ]),
          ),
        ),
      ]),
    );
  }
}
