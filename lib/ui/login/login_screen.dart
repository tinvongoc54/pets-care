import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pets_care/di/injection.dart';
import 'package:pets_care/resource/assets/app_assets.dart';
import 'package:pets_care/resource/localization/l10n.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/resource/theme/app_text_styles.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/login/bloc/login_cubit.dart';
import 'package:pets_care/widgets/app_button.dart';
import 'package:pets_care/widgets/app_input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt.get<LoginCubit>(), child: const LoginView());
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.imgBgLogin), fit: BoxFit.cover)),
        padding: const EdgeInsets.only(top: 40, left: 40, right: 40),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
                width: 200, height: 200, child: Image.asset(AppAssets.imgApp)),
            const SizedBox(height: 30),
            AppInputField(
                hint: AppTranslations.of(context).email,
                icon: Icons.email_outlined),
            const SizedBox(height: 16),
            AppInputField(
                hint: AppTranslations.of(context).password,
                icon: Icons.lock_outline,
                isPassword: true),
            const SizedBox(height: 20),
            Align(
                alignment: Alignment.centerRight,
                child: Text(AppTranslations.of(context).forgotPassword,
                    style: mediumLargeStyle(color: AppColors.primary))),
            const SizedBox(height: 20),
            AppButton(
                text: AppTranslations.of(context).login.toUpperCase(),
                textStyle: veryLargeStyle(
                    color: Colors.white, fontWeight: FontWeight.w500),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, MAIN_TAB_BAR, (_) => false);
                }),
            const SizedBox(height: 20),
            Text(AppTranslations.of(context).orConnectWith,
                style: mediumLargeStyle(color: AppColors.grayLight)),
            const SizedBox(height: 40),
            AppButton(
                text: AppTranslations.of(context).loginGoogle,
                textStyle: mediumLargeStyle(color: Colors.white),
                prefixIcon: SvgPicture.asset(AppAssets.icGoogle),
                onPressed: () {}),
            const SizedBox(height: 10),
            AppButton(
                text: AppTranslations.of(context).loginFacebook,
                textStyle: mediumLargeStyle(color: Colors.white),
                prefixIcon: SvgPicture.asset(AppAssets.icFacebook),
                onPressed: () {}),
            const SizedBox(height: 10),
            AppButton(
                text: AppTranslations.of(context).loginApple,
                textStyle: mediumLargeStyle(color: Colors.white),
                prefixIcon: SvgPicture.asset(AppAssets.icApple),
                onPressed: () {}),
          ]),
        ),
      ),
    );
  }
}
