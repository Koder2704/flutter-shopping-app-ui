import 'package:flutter/material.dart';



class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ignore: avoid_print
      onTap: () => { print("Gesture detected !") },
      child: Container(
        width: 140.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 7, 110, 96),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child: Text('Get Started', 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
            ),
          ) 
        )
      )
    );
  }
}

class SecondaryButton extends StatelessWidget {
  final Function()? navigate;

  const SecondaryButton({super.key, required this.navigate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigate,
      child: Container(
        width: 140.0,
        height: 50.0,
        decoration: BoxDecoration(
            color: Colors.white,
          // color: Colors.black87,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: const Center(
          child: Text('Sign in', 
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 7, 110, 96),
            fontWeight: FontWeight.bold
            ),
          ) 
        )
      )
    );
  }
}


class Button extends StatelessWidget {

  final String text;
  const Button({ super.key, required this.text });

  @override
  Widget build(BuildContext context) {
    Color primaryColor = const Color.fromARGB(255, 7, 110, 96);
    
    return GestureDetector(
      // ignore: avoid_print
      onTap: () => Navigator.pushNamed(context, '/home'),
      child: Container(
        // margin: EdgeInsets.all(10.0),
        height: 60.0,
        decoration: BoxDecoration(
            color: primaryColor,
          // color: Colors.black87,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(text, 
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16.0
            ),
          ) 
        )
      )
    );
  }
}



class SocialButton extends StatelessWidget {

  final String team;
  const SocialButton({ super.key, required this.team });

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      // ignore: avoid_print
      onTap: () => { print("Gesture detected !") },
      child: Container(
        // margin: EdgeInsets.all(10.0),
        height: 68.0,
        decoration: BoxDecoration(
            color: Colors.white,
          // color: Colors.black87,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text("Sign in with $team", 
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0
            ),
          ) 
        )
      )
    );
  }
}
