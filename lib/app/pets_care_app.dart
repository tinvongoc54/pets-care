import 'package:flutter/material.dart';

class PetsCareApp extends StatelessWidget {
  final Widget child;
  final Widget? loader;
  final bool showNetworkUpdates;
  final bool persistNoInternetNotification;
  final bool darkTheme;

  const PetsCareApp({
    Key? key,
    required this.child,
    this.loader,
    this.showNetworkUpdates = false,
    this.persistNoInternetNotification = false,
    this.darkTheme = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child;
  }
}