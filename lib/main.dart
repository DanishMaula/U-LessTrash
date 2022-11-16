import 'package:flutter/material.dart';
import 'package:u_less_trash/pages/ADD%20TRASH/waste/camera_page.dart';
import 'package:u_less_trash/pages/CHAT/chat_page.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/cart/cart_page.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/cart/payment_finished.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/cart/payment_page.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/flea_category/flea_category.dart';
import 'package:u_less_trash/pages/HOME/home_page.dart';
import 'package:u_less_trash/pages/AUTH/login_page.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Pre_loved/pre_loved.dart';
import 'package:u_less_trash/pages/AUTH/register_page.dart';
import 'package:u_less_trash/pages/PROFILE/history/buyer_list.dart';
import 'package:u_less_trash/pages/PROFILE/history/tabbar_history.dart';
import 'package:u_less_trash/pages/PROFILE/refunds/bank_account.dart';
import 'package:u_less_trash/pages/PROFILE/refunds/enter_pin.dart';
import 'package:u_less_trash/pages/PROFILE/refunds/select_rekening.dart';
import 'package:u_less_trash/pages/SPLASH_SCREEN/splash_screen.dart';
import 'package:u_less_trash/pages/HOME/CATEGORIES/Waste/waste_categories.dart';
import 'package:u_less_trash/widget/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.white)),
      initialRoute: '/splashScreen',
      debugShowCheckedModeBanner: false,
      routes: {
        '/splashScreen': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/navBar': (context) => const NavBar(),
        '/wasteCategory': (context) => const WasteCategories(),
        '/preLoved': (context) => const PreLoved(),
        '/fleaCategory': (context) => const FleaCategory(),
        '/cart': (context) => const CartPage(),
        '/chat': (context) => const ChatPage(),
        '/payment': (context) => const PaymentPage(),
        '/paymentFinish': (context) => const PaymentFinished(),
        '/cameraPage': (context) => const CameraPage(),
        '/selectRekening': (context) => const SelectRekening(),
        '/enterBank': (context) => const BankAccount(),
        '/enterPin': (context) => EnterPin(),
        '/myHistory': (context) => const TabbarHistory(),
      },
    );
  }
}
