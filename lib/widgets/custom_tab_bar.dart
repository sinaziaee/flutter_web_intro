import 'package:flutter/material.dart';
import 'package:p_11_web/constants.dart';
import 'package:p_11_web/screens/about_screen.dart';
import 'package:p_11_web/screens/achievement_screen.dart';
import 'package:p_11_web/screens/backgound_screen.dart';
import 'package:p_11_web/screens/publication_and_projects_screen.dart';
import 'package:p_11_web/widgets/tab_bar_option.dart';

class CustomTabBar extends StatelessWidget {
  final bool isLarge;

  const CustomTabBar({Key? key, required this.isLarge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              AboutScreen.id,
            );
          },
          option: 'About',
          isLarge: isLarge,
        ),
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              BackgroundScreen.id,
            );
          },
          option: 'Background',
          isLarge: isLarge,
        ),
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              AchievementScreen.id,
            );
          },
          option: 'Achievements',
          isLarge: isLarge,
        ),
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              PublicationProjectsScreen.id,
            );
          },
          option: 'Publications & Projects',
          isLarge: isLarge,
        ),
        customWidthDivider(),
      ],
    );
  }

  customWidthDivider() {
    return SizedBox(
      width: isLarge ? 10 : 5,
    );
  }
}
