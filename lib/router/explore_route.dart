import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/explore/explore_screen.dart';

class ExploreRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case EXPLORE:
        return MaterialPageRoute(builder: (_) => const ExploreScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute(builder: (_) => const ExploreScreen(), settings: routeSettings);
    }
  }
}