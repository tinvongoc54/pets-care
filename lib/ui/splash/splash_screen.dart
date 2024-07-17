import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets_care/di/injection.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/splash/bloc/splash_cubit.dart';

import '../../resource/assets/app_assets.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
        create: (context) => getIt.get<SplashCubit>(),
        child: const SplashView());
  }
}

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (!state.isCountDownFinished) return;
        Navigator.pushNamedAndRemoveUntil(context, MAIN_TAB_BAR, (route) => false);
      },
      child: Scaffold(
        body: Container(
          color: AppColors.primary,
          child: Center(
            child: Image.asset(
              AppAssets.imgApp,
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
