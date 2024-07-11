import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';

import '../../../resource/localization/l10n.dart';
import '../bloc/walkthrough_cubit.dart';

class Slide2 extends StatelessWidget {
  const Slide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(AppTranslations.of(context).now,
            style: superLargeStyle(fontWeight: FontWeight.w600)),
        Text(AppTranslations.of(context).slide2_1,
            textAlign: TextAlign.center,
            style: mediumLargeStyle(color: AppColors.grayLight)),
        Text(AppTranslations.of(context).slide2_2,
            textAlign: TextAlign.center,
            style: mediumLargeStyle(color: AppColors.grayLight)),
        Text(AppTranslations.of(context).slide2_3,
            textAlign: TextAlign.center,
            style: mediumLargeStyle(color: AppColors.grayLight)),
        Container(
          decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CupertinoButton(
            onPressed: () {
              context.read<WalkthroughCubit>().nextSlide();
            },
            padding: EdgeInsets.zero,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 1),
                  Text(AppTranslations.of(context).next,
                      style: mediumLargeStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const Icon(Icons.arrow_forward_ios, color: Colors.white)
                ]),
          ),
        )
      ]),
    );
  }
}
