import 'package:flutter/material.dart';
import 'package:pets_care/resources/theme/pets_care_theme.dart';

import '../resources/localization/l10n.dart';
import '../router/router.dart';

class PetsCareMaterialApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigationKey;
  final Locale? locale;

  const PetsCareMaterialApp({Key? key, required this.navigationKey, this.locale})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [AppTranslations.delegate],
      navigatorKey: navigationKey,
      title: 'Pets Care App',
      locale: locale,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // Obtain the current media query information.
        final mediaQueryData = MediaQuery.of(context);

        return MediaQuery(
          // Set the default textScaleFactor to 1.0 for
          // the whole subtree.
          data: mediaQueryData.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      themeMode: ThemeMode.light,
      theme: PetsCareTheme.light(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
