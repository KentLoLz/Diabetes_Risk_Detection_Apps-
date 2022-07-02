import 'package:flutter/material.dart';
import 'package:test_auth/components/expandableTile.dart';

class DecreaseSym7 extends StatefulWidget {
  const DecreaseSym7({Key? key}) : super(key: key);

  @override
  State<DecreaseSym7> createState() => _DecreaseSym7State();
}

class _DecreaseSym7State extends State<DecreaseSym7> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Polyuria",
      cause: "assets/textyes/polyuria/polyuria_cause.txt",
      symptom: "assets/textyes/polyuria/polyuria_symptoms.txt",
      treatment: 'assets/textyes/polyuria/polyuria_treatment.txt',
    );
  }
}
