import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/local/shared_preferences/shared_preferences.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final SharedPreferences _sharedPreferences;

  SplashCubit({required SharedPreferences sharedPreferences})
      : _sharedPreferences = sharedPreferences,
        super(const SplashState(
        isCountDownFinished: false,
      ));

  Future<void> loadInitialData() async {
    Timer(const Duration(seconds: 2), () {
      emit(const SplashState(isCountDownFinished: true));
    });
  }
}
