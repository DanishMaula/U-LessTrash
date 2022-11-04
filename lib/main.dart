import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/home_page.dart';
import 'package:u_less_trash/pages/login_page.dart';
import 'package:u_less_trash/pages/register_page.dart';
import 'package:u_less_trash/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login':(context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}


