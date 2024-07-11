import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';
import 'package:pets_care/ui/walkthrough/bloc/walkthrough_cubit.dart';

import '../../../resource/localization/l10n.dart';

class Slide1 extends StatelessWidget {
  const Slide1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
                width: 90, height: 90, child: Image.asset(AppAssets.imgApp)),
            Text(AppTranslations.of(context).welcome,
                style: superLargeStyle(fontWeight: FontWeight.w600)),
            Text(AppTranslations.of(context).slide1,
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
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      const Icon(Icons.arrow_forward_ios, color: Colors.white)
                    ]),
              ),
            )
          ]),
    );
  }
}
