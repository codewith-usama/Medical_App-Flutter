import 'package:flutter/material.dart';
import 'package:medical_app/constant.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Hey Alex",
                  style: kAlexStyleHomeScreen,
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('images/doctor1.jpg'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
