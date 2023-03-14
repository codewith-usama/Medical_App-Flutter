import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_app/constant.dart';
import '../components/auth.dart';
import 'signup_screen.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('images/doctors.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter Username"
                      ),
                      prefixIcon: Icon(
                        Icons.person
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: TextField(
                    obscureText: passToggle ? true : false,
                    decoration:  InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text(
                          "Enter Password"
                      ),
                      prefixIcon: const Icon(
                          Icons.lock
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passToggle == true ? passToggle = false : passToggle = true;
                          });
                        },
                        child: passToggle ? const Icon(
                            CupertinoIcons.eye_slash_fill
                        ) : const Icon(
                            CupertinoIcons.eye_fill
                        )
                      )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Auth(
                        text: "Log In",
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen()
                            )
                          );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have any account?",
                      style: kLoginPageBottom,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          )
                        );
                      },
                      child: const Text(
                        "Create Account",
                        style: kCreateAccountLoginPageStyle,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
