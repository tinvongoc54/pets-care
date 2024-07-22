import 'package:flutter/material.dart';
import 'package:pets_care/router/route_page.dart';
import 'package:pets_care/ui/chat/chat_screen.dart';
import 'package:pets_care/ui/home/home_screen.dart';

class HomeRoute {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case HOME:
        return MaterialPageRoute(builder: (_) => const HomeScreen(), settings: routeSettings);
      case CHAT_AI:
        return MaterialPageRoute(builder: (_) => const ChatScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen(), settings: routeSettings);
    }
  }
}