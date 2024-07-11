import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/app_bar_custom.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [AppBarCustom(title: 'Manage')],
      ),
    );
  }

}