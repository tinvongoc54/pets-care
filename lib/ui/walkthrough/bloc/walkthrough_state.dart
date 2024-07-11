part of 'walkthrough_cubit.dart';

@freezed
class WalkthroughState with _$WalkthroughState {
  const factory WalkthroughState({
    @Default(AppAssets.img1) String image,
    @Default(false) bool isLastSlide,
  }) = _WalkthroughState;
}
