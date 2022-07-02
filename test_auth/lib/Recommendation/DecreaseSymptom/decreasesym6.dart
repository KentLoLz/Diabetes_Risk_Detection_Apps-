import 'package:flutter/material.dart';
import 'package:test_auth/components/expandableTile.dart';

class DecreaseSym6 extends StatefulWidget {
  const DecreaseSym6({Key? key}) : super(key: key);

  @override
  State<DecreaseSym6> createState() => _DecreaseSym6State();
}

class _DecreaseSym6State extends State<DecreaseSym6> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Polydipsia",
      cause: "assets/textyes/polydipsia/polydipsia_cause.txt",
      symptom: "assets/textyes/polydipsia/polydipsia_symptoms.txt",
      treatment: 'assets/textyes/polydipsia/polydipsia_treatment.txt',
    );
  }
}
