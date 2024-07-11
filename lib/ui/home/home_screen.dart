import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pets_care/widgets/app_bar_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [AppBarCustom(title: 'Home')],
      ),
    );
    // return const Center(child: Text('Home'));
  }
}
