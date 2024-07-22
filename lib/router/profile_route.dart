import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/profile/profile_screen.dart';

class ProfileRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case PROFILE:
        return MaterialPageRoute(builder: (_) => const ProfileScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute(builder: (_) => const ProfileScreen(), settings: routeSettings);
    }
  }
}