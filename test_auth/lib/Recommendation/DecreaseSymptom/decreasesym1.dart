import 'package:flutter/material.dart';
import '../../components/expandableTile.dart';

class DecreaseSym1 extends StatefulWidget {
  const DecreaseSym1({Key? key}) : super(key: key);

  @override
  State<DecreaseSym1> createState() => _DecreaseSym1State();
}

class _DecreaseSym1State extends State<DecreaseSym1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Alopecia",
      cause: "assets/textyes/alopecia/alopecia_cause.txt",
      symptom: "assets/textyes/alopecia/alopecia_symptoms.txt",
      treatment: 'assets/textyes/alopecia/alopecia_treatment.txt',
    );
  }
}
