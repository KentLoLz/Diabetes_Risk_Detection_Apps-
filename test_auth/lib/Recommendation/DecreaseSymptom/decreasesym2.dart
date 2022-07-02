import 'package:flutter/material.dart';

import '../../components/expandableTile.dart';

class DecreaseSym2 extends StatefulWidget {
  const DecreaseSym2({Key? key}) : super(key: key);

  @override
  State<DecreaseSym2> createState() => _DecreaseSym2State();
}

class _DecreaseSym2State extends State<DecreaseSym2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return const ExpandableTile(
      title: "Delayed Wound Healing",
      cause: "assets/textyes/delayedwound/delayed_wound_cause.txt",
      symptom: "assets/textyes/delayedwound/delayed_wound_symptom.txt",
      treatment: 'assets/textyes/delayedwound/delayed_wound_treatment.txt',
    );
  }
}
