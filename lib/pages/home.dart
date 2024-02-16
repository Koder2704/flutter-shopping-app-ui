import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dipstore", style: TextStyle(
          fontWeight: FontWeight.bold
        )),
        automaticallyImplyLeading: false,
        actions: const [
          IconButton(
            icon: Icon(Icons.mail_outline, size: 28.0, color: Colors.black87),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.notifications, size: 28.0, color: Colors.black87),
            onPressed: null,
          ),
        ]
      ),
      body: Center(child: Text("Home Screen"))
    );
  }
}