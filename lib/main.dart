import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:p_11_web/screens/achievement_screen.dart';
import 'package:p_11_web/screens/publication_and_projects_screen.dart';

import 'screens/about_screen.dart';
import 'screens/backgound_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: AboutScreen.id,
          page: () => AboutScreen(),
        ),
        GetPage(
          name: AchievementScreen.id,
          page: () => const AchievementScreen(),
        ),
        GetPage(
          name: BackgroundScreen.id,
          page: () => BackgroundScreen(),
        ),
        GetPage(
          name: PublicationProjectsScreen.id,
          page: () => const PublicationProjectsScreen(),
        ),
      ],
      defaultTransition: Transition.fade,
      initialRoute: AboutScreen.id,
    );
  }
}
