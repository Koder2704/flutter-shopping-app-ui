import 'package:flutter/material.dart';
import 'package:shopping_app_ui/pages/get_started.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 5)).then((value) => 
      Navigator.push(context,
        MaterialPageRoute(builder: (
          (context) => const GetStartedScreen())
        )
      )
    );

    return const Scaffold(
        backgroundColor: Color.fromARGB(255, 7, 110, 96),
        body: Center(
            child: Text("Dipstore",
                style: TextStyle(
                    color: Color.fromARGB(255, 230, 228, 228),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold))));
  }
}
