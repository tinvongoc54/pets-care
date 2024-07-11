import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/ui/walkthrough/widgets/slide1.dart';

import '../widgets/slide2.dart';
import '../widgets/slide3.dart';

part 'walkthrough_state.dart';

part 'walkthrough_cubit.freezed.dart';

class WalkthroughCubit extends Cubit<WalkthroughState> {
  WalkthroughCubit() : super(const WalkthroughState());

  final pageController = PageController();

  final pages = [
    const Slide1(),
    const Slide2(),
    const Slide3(),
  ];

  void nextSlide() {
    pageController.nextPage(
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  void changeSlide(index) {
    pageController.jumpToPage(index);
    switch (index) {
      case 0: {
        emit(state.copyWith(image: AppAssets.img1, isLastSlide: false));
        return;
      }
      case 1: {
        emit(state.copyWith(image: AppAssets.img2, isLastSlide: false));
        return;
      }
      case 2: {
        emit(state.copyWith(image: AppAssets.img3, isLastSlide: true));
        return;
      }
    }
  }
}
