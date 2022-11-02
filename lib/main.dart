import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/home_page.dart';
import 'package:u_less_trash/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

