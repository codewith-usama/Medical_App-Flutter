import 'package:flutter/material.dart';
import '../screens/navbar_roots.dart';
import 'signup_screen.dart';
import '../app_color.dart' as app_color;
import '../components/auth.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavBarRoots()
                      )
                    );
                  },
                  child: const Text(
                    "SKIP",
                    style: TextStyle(
                      color: app_color.kWelcomeScreenComponent,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('images/doctors.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Doctors Appointment",
                style: TextStyle(
                  fontSize: 35,
                  letterSpacing: 2,
                  wordSpacing: 1,
                  fontWeight: FontWeight.bold,
                  color: app_color.kWelcomeScreenComponent
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Appoint your Doctor",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Auth(
                    text: "Log In",
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        )
                      );
                    },
                  ),
                  Auth(
                    text: "Sign Up",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          )
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}