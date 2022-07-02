import 'package:flutter/material.dart';
import 'package:test_auth/components/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: BgColor,
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            // top: -1000,
            // left: -400,
            child: Image.asset("assets/images/bgbg1.jpg"),
            width: size.width * 1.2,

            //
          ),
          // Positioned(
          //   bottom: 150,
          //   right: 0,
          //   child: Image.asset(
          //     "assets/images/bluesquare2.JPG",
          //     width: size.width * 0.4,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
