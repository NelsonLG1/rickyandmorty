import 'package:flutter/material.dart';
import 'package:rickyandmorty/apps/pages/splash/splash_page.dart';
import 'package:rickyandmorty/apps/utils/routes.dart';
import 'package:rickyandmorty/apps/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rick and morty',
      theme: lightTheme(),
      home: SplashScreen(),
      routes: appRoutes,
    );
  }
}

