import 'package:flutter/material.dart';
import 'package:test_auth/components/expandableTile.dart';

class DecreaseSym8 extends StatefulWidget {
  const DecreaseSym8({Key? key}) : super(key: key);

  @override
  State<DecreaseSym8> createState() => _DecreaseSym8State();
}

class _DecreaseSym8State extends State<DecreaseSym8> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Sudden Weight Lost",
      cause: "assets/textyes/weightlost/weightlost_cause.txt",
      symptom: "assets/textyes/weightlost/weightlost_symptoms.txt",
      treatment: 'assets/textyes/weightlost/weightlost_treatment.txt',
    );
  }
}
