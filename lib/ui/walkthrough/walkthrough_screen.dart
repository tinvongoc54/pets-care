import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/ui/walkthrough/bloc/walkthrough_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../di/injection.dart';
import '../../resource/localization/l10n.dart';
import '../../resource/theme/app_text_styles.dart';

class WalkthroughScreen extends StatelessWidget {
  const WalkthroughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<WalkthroughCubit>(),
        child: const WalkthroughView());
  }
}

class WalkthroughView extends StatefulWidget {
  const WalkthroughView({super.key});

  @override
  State<WalkthroughView> createState() => _WalkthroughViewState();
}

class _WalkthroughViewState extends State<WalkthroughView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WalkthroughCubit, WalkthroughState>(
          builder: (context, state) {
        final cubit = context.read<WalkthroughCubit>();
        return Stack(
          children: [
            SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(state.image, fit: BoxFit.fill)),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                padding: const EdgeInsets.only(top: 20),
                child: Column(children: [
                  SmoothPageIndicator(
                    controller: cubit.pageController,
                    count: cubit.pages.length,
                    effect: const ExpandingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 4,
                      dotColor: AppColors.primary,
                      activeDotColor: AppColors.primary,
                    ),
                  ),
                  Container(
                    height: 320,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: PageView.builder(
                        controller: cubit.pageController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: cubit.pages.length,
                        itemBuilder: (context, index) {
                          return cubit.pages[index];
                        },
                        onPageChanged: (index) {
                          cubit.changeSlide(index);
                        },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Visibility(
                      visible: state.isLastSlide,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                        Text(AppTranslations.of(context).already_account,
                            style: mediumStyle(fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {},
                          child: Text(AppTranslations.of(context).login,
                              style: mediumStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ]))
                ]),
              ),
            )
          ],
        );
      },
    ));
  }
}
