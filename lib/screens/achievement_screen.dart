import 'package:flutter/material.dart';

import 'base_screen.dart';

class AchievementScreen extends StatelessWidget {
  static String id = '/achievement';
  const AchievementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        title: 'Achievements',
        size: MediaQuery.of(context).size,
        myChild: Container(),
      ),
    );
  }
}
