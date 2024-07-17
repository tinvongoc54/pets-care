import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/discover/discover_screen.dart';
import 'package:pets_care/ui/home/home_screen.dart';

class HomeRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => const HomeScreen(), settings: routeSettings);
      case DETAIL_PET:
        return MaterialPageRoute(builder: (_) => const DiscoverScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen(), settings: routeSettings);
    }
  }
}