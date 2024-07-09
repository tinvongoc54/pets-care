import 'package:pets_care/di/injection.dart';
import 'package:pets_care/ui/bloc/localization/localization_cubit.dart';

import '../../ui/bloc/app/app_cubit.dart';

abstract class CubitModule {
  static Future<void> initModule() async {
    getIt
      ..registerFactory<AppCubit>(() {
        return AppCubit();
      })
      ..registerFactory<LocalizationCubit>(() {
        return LocalizationCubit();
      });
  }
}
