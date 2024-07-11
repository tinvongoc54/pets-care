import 'package:pets_care/di/injection.dart';
import 'package:pets_care/ui/bloc/localization/localization_cubit.dart';
import 'package:pets_care/ui/login/bloc/login_cubit.dart';
import 'package:pets_care/ui/walkthrough/bloc/walkthrough_cubit.dart';

import '../../ui/bloc/app/app_cubit.dart';
import '../../ui/splash/bloc/splash_cubit.dart';

abstract class CubitModule {
  static Future<void> initModule() async {
    getIt
      ..registerFactory<AppCubit>(() {
        return AppCubit();
      })
      ..registerFactory<LocalizationCubit>(() {
        return LocalizationCubit();
      })
      ..registerFactory<SplashCubit>(() {
        return SplashCubit(sharedPreferences: getIt());
      })
      ..registerFactory<WalkthroughCubit>(() {
        return WalkthroughCubit();
      })
      ..registerFactory<LoginCubit>(() {
        return LoginCubit();
      });
  }
}
