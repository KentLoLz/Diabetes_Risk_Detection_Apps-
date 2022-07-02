import 'package:flutter/material.dart';
import 'package:test_auth/components/expandableTile.dart';

class DecreaseSym3 extends StatefulWidget {
  const DecreaseSym3({Key? key}) : super(key: key);

  @override
  State<DecreaseSym3> createState() => _DecreaseSym3State();
}

class _DecreaseSym3State extends State<DecreaseSym3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Irritability",
      cause: "assets/textyes/irritability/irritability_cause.txt",
      symptom: "assets/textyes/irritability/irritability_symptoms.txt",
      treatment: 'assets/textyes/irritability/irritability_treatment.txt',
    );
  }
}
