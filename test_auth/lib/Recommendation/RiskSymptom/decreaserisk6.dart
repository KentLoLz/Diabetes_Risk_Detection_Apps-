import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DecreaseRisk6 extends StatefulWidget {
  @override
  State<DecreaseRisk6> createState() => _DecreaseRisk6State();
}

class _DecreaseRisk6State extends State<DecreaseRisk6> {
  String textFromFile = "";
  Future<void> getData() async {
    final String response;
    response = await rootBundle.loadString('assets/text/fibre_diet.txt');
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
                  "Follow A High Fiber Diet",
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
