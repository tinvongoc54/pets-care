import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/main/main_screen.dart';
import 'package:pets_care/ui/splash/splash_screen.dart';
import 'package:pets_care/ui/walkthrough/walkthrough_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // get argument bundle that was attached
    final arguments = settings.arguments;

    // use switch case to determine the requested route.
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
      case WALKTHROUGH:
        return MaterialPageRoute(
          builder: (_) => const WalkthroughScreen(),
          settings: settings,
        );
      case MAIN_TAB_BAR:
        return MaterialPageRoute(
          builder: (_) => const MainScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );
    }
  }
}
