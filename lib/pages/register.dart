import 'package:flutter/material.dart';
import 'package:shopping_app_ui/components/buttons.dart';
import 'package:shopping_app_ui/pages/login.dart';



class RegisterScreen extends StatelessWidget {
  const RegisterScreen({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            const SizedBox( height: 60.0 ),
          
            const Text("Let's get started", 
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0
                )
              ),
        
            const SizedBox(
                width: 200.0,
                child:Text("Get started with Dipstore",
                style: TextStyle(
                  color: Colors.grey
                ),
              ),
            ),


            const SizedBox(height: 40.0),

             TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your username...",
                hintStyle: const TextStyle(color: Colors.black26),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: const Icon(Icons.person, size: 24.0, color: Colors.black87),
                border: InputBorder.none
              ),
            ),

            const SizedBox(height: 14.0),

            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your email...",
                hintStyle: const TextStyle(color: Colors.black26),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: const Icon(Icons.mail, size: 24.0, color: Colors.black87),
                border: InputBorder.none
              ),
            ),

            const SizedBox(height: 14.0),
            
            TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter your password...",
                hintStyle: const TextStyle(color: Colors.black26),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                ),
                prefixIcon: const Icon(Icons.lock, size: 24.0, color: Colors.black87),
                suffixIcon: const Icon(Icons.remove_red_eye_outlined, size: 24.0, color: Colors.black54),
                border: InputBorder.none
              ),
            ),


            const SizedBox(height: 40.0),

            const Button(text: "Continue"),

            const SizedBox(height: 24.0),

            const Center(
              child: Text("Or continue with", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16.0
                )
              ),
            ),


            const SizedBox(height: 20.0),

            const SocialButton(team: 'Google'),

            const SizedBox(height: 16.0),

            const SocialButton(team: 'Apple'),

            const SizedBox(height: 60.0),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account ?",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16.0
                  )
                ),

                const SizedBox(width: 6.0),

                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginScreen())
                  ),
                  child: const Text("Sign in",
                    style: TextStyle(
                      color: Color.fromARGB(255, 7, 110, 96),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ),
              ]
            )
          ]
        ),
      ),
    );
  }

}