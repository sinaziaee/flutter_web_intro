import 'package:flutter/material.dart';

import 'base_screen.dart';

class PublicationProjectsScreen extends StatelessWidget {
  static String id = '/publication_and_achievement';
  const PublicationProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseScreen(
        title: 'Publications and Projects',
        size: MediaQuery.of(context).size,
        myChild: Container(),
      ),
    );
  }
}
