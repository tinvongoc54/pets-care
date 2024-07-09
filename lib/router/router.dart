import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // get argument bundle that was attached
    final arguments = settings.arguments;

    return MaterialPageRoute(builder: (_) => Container(), settings: settings);

    // use switch case to determine the requested route.
    // switch (settings.name) {
    //   case SPLASH:
    //     return MaterialPageRoute(
    //       builder: (_) => const SplashPage(),
    //       settings: settings,
    //     );
    //   case MAIN_TAB_BAR:
    //     return MaterialPageRoute(
    //       builder: (_) => const MainPage(),
    //       settings: settings,
    //     );
    //   default:
    //     return MaterialPageRoute(
    //       builder: (_) => const SplashPage(),
    //       settings: settings,
    //     );
    // }
  }
}
