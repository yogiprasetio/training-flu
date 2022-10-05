import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:futball_apps/models/models.dart';
import 'package:futball_apps/shareds/shareds.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: backGround1,
              secondary: backGround2,
            ),
        scaffoldBackgroundColor: backGround2,
        appBarTheme: AppBarTheme(backgroundColor: backGround2),
        textTheme: myTextTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomePage.nameRoute,
      routes: {
        HomePage.nameRoute: (context) => const HomePage(),
        DetailMatch.nameRoute: (context) => DetailMatch(
            match: ModalRoute.of(context)?.settings.arguments as Fixtures)
      },
    );
  }
}
