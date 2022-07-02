import 'package:flutter/material.dart';
import 'package:test_auth/components/expandableTile.dart';

class DecreaseSym4 extends StatefulWidget {
  const DecreaseSym4({Key? key}) : super(key: key);

  @override
  State<DecreaseSym4> createState() => _DecreaseSym4State();
}

class _DecreaseSym4State extends State<DecreaseSym4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Itching",
      cause: "assets/textyes/itching/itching_cause.txt",
      symptom: "assets/textyes/itching/itching_symptoms.txt",
      treatment: 'assets/textyes/itching/itching_treatment.txt',
    );
  }
}
