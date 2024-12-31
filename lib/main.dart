import 'package:flutter/material.dart';
import 'package:islami/features/layout/quran/pages/quran_home.dart';
import 'package:islami/features/splash/page/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (_) {
          return Splash();
        },
        QuranHome.routeName: (_) {
          return QuranHome();
        },
      },
    );
  }
}
