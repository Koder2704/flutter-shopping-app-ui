import 'package:flutter/material.dart';
import 'package:shopping_app_ui/pages/login.dart';
import '../components/buttons.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void navigateToSignIn () {
      // Navigator.push(context,
      //   MaterialPageRoute(builder: (context) => const LoginScreen())
      // );
      Navigator.pushNamed(context, "/login");
    }


    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img1.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color.fromARGB(255, 216, 216, 216),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Welcome to Dipstore",
                      style: TextStyle(
                        color: Color.fromARGB(255, 15, 15, 15),
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      "With us you can have the best shopping experience ever",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Container(
                      width: 40.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 7, 110, 96),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    const SizedBox(height: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SecondaryButton(navigate: navigateToSignIn),
                        const PrimaryButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
