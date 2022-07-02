import 'package:flutter/material.dart';
import 'package:test_auth/components/expandableTile.dart';

class DecreaseSym5 extends StatefulWidget {
  const DecreaseSym5({Key? key}) : super(key: key);

  @override
  State<DecreaseSym5> createState() => _DecreaseSym5State();
}

class _DecreaseSym5State extends State<DecreaseSym5> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Partial Paresis",
      cause: "assets/textyes/paresis/paresis_cause.txt",
      symptom: "assets/textyes/paresis/paresis_symptoms.txt",
      treatment: 'assets/textyes/paresis/paresis_treatment.txt',
    );
  }
}
