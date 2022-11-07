import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/home_page.dart';
import 'package:u_less_trash/pages/login_page.dart';
import 'package:u_less_trash/pages/register_page.dart';
import 'package:u_less_trash/pages/splash_screen.dart';
import 'package:u_less_trash/pages/waste_categories.dart';
import 'package:u_less_trash/widget/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white
        )
      ),
      initialRoute: '/splashScreen',
      debugShowCheckedModeBanner: false,
      routes: {
        '/splashScreen':(context) => const SplashScreen(),
        '/login':(context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/navBar':(context) => const NavBar(),
        '/wasteCategory': (context) => const WasteCategories(),
      },
    );
  }
}


