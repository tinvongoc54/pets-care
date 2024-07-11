import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pets_care/app/pets_care_app.dart';
import 'package:pets_care/app/pets_care_material_app.dart';
import 'package:pets_care/resource/theme/app_colors.dart';
import 'package:pets_care/ui/bloc/localization/localization_cubit.dart';

import 'app/app_provider.dart';
import 'di/injection.dart';

void main() {
  runZonedGuarded(() async {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ));
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await setupDI();

    runApp(const MyApp());
  }, ((error, stack) {
    debugPrint(error.toString());
    debugPrint(stack.toString());
  }));
  FlutterNativeSplash.remove();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigationKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          var languageCode = state.languageCode;
          var locale = languageCode == null ? null : Locale(languageCode);
          return PetsCareApp(
              child: PetsCareMaterialApp(
                  navigationKey: _navigationKey, locale: locale));
        },
        buildWhen: (old, current) {
          return old.languageCode != current.languageCode;
        },
      ),
    );
  }
}
