import 'package:flutter/material.dart';
import '../app_color.dart' as app_color;
import '../constant.dart' as cons;

class Auth extends StatelessWidget {

  const Auth({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: app_color.welcomeScreenComponent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 40,
          ),
          child: Center(
            child: Text(
              text,
              style: cons.kAuthStyle
            ),
          ),
        ),
      ),
    );
  }
}
