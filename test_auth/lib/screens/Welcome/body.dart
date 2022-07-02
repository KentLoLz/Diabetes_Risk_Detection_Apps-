import 'package:flutter/material.dart';
import 'package:test_auth/components/rounded_button.dart';
import 'package:test_auth/screens/Welcome/background.dart';
import 'package:test_auth/widget/login.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "WELCOME TO DIABETES DETECTION APP",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Franklin",
                color: Color.fromRGBO(141, 180, 227, 1),
                fontSize: 30),
          ),
          const SizedBox(height: 50),
          Image.asset(
            "assets/images/blood_image.png",
            height: size.height * 0.3,
          ),
          const SizedBox(height: 50),
          RoundedButton(
            text: "SIGN IN",
            color: Color.fromRGBO(140, 211, 255, 1),
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
