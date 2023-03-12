import 'package:flutter/material.dart';
import '../appColor.dart' as app_color;
import '../constant.dart' as cons;

class Auth extends StatelessWidget {

  Auth({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: app_color.welcomeScreenComponent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {

        },
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 40,
          ),
          child: Text(
            text,
            style: cons.authStyle,
          ),
        ),
      ),
    );
  }
}
