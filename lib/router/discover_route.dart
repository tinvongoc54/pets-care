import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/discover/discover_screen.dart';

class DiscoverRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case DISCOVER:
        return MaterialPageRoute(builder: (_) => const DiscoverScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute(builder: (_) => const DiscoverScreen(), settings: routeSettings);
    }
  }
}