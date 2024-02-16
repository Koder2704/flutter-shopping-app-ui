import 'package:flutter/material.dart';
import 'package:shopping_app_ui/pages/get_started.dart';
import 'package:shopping_app_ui/pages/home.dart';
import 'package:shopping_app_ui/pages/landing.dart';
import 'package:shopping_app_ui/pages/login.dart';
import 'package:shopping_app_ui/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: LandingScreen(), // Remove the top right tag symbol
      // home: GetStartedScreen(), // Remove the top right tag symbol
      debugShowCheckedModeBanner: false,
      initialRoute: 'Landing',
      routes: { 
        '/': (context) => const LandingScreen(),
        '/get_started': (context) => const GetStartedScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
      }
    );
  }
}
