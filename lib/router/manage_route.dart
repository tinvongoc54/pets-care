import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/manage/manage_screen.dart';

class ManageRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case MANAGE:
        return MaterialPageRoute(builder: (_) => const ManageScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute(builder: (_) => const ManageScreen(), settings: routeSettings);
    }
  }
}