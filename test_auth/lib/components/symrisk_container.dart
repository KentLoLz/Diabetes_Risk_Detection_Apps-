import 'package:flutter/material.dart';

class SymRiskContainer extends StatefulWidget {
  final String describe;
  final String title;
  // final Function navigate;
  const SymRiskContainer({
    Key? key,
    required this.title,
    required this.describe,
    //required this.navigate,
  }) : super(key: key);

  @override
  State<SymRiskContainer> createState() => _SymRiskContainerState();
}

class _SymRiskContainerState extends State<SymRiskContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 350,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              widget.title,
              style: const TextStyle(
                fontFamily: 'Franklin',
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.describe,
            style: const TextStyle(
                fontFamily: "Franklin", color: Colors.white, fontSize: 15),
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(134, 186, 161, 1),
          border: Border.all(
            color: Color.fromRGBO(255, 219, 172, 1),
            width: 4,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
