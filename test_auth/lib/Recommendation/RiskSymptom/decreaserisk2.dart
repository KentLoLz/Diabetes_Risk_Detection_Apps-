import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DecreaseRisk2 extends StatefulWidget {
  @override
  State<DecreaseRisk2> createState() => _DecreaseRisk2State();
}

class _DecreaseRisk2State extends State<DecreaseRisk2> {
  String textFromFile = "";
  Future<void> getData() async {
    final String response;
    response = await rootBundle.loadString('assets/text/regular_exercise.txt');
    setState(() {
      textFromFile = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    getData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 139, 165, 143),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Exercise Regularly",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Franklin",
                      fontSize: 25,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 350,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        textFromFile,
                        style: const TextStyle(
                            fontFamily: "Franklin",
                            color: Colors.white,
                            fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(134, 186, 161, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(255, 219, 172, 1),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
