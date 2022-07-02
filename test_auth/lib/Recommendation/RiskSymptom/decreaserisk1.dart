import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class DecreaseRisk1 extends StatefulWidget {
  @override
  State<DecreaseRisk1> createState() => _DecreaseRisk1State();
}

class _DecreaseRisk1State extends State<DecreaseRisk1> {
  String textFromFile = "";
  Future<void> getData() async {
    final String response;
    response = await rootBundle.loadString('assets/text/reduce_carb.txt');
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
                  "Reduce your total carb intake",
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
                        //"The quantity and quality ASAasdfsdfsdfsdfsdfsdfasdffffffffffffffffffffffffffffffffffffffffof your carb intake are both important factors to consider when making dietary changes to help prevent diabetes. Your body breaks down carbs into small sugar molecules, which are absorbed into your bloodstream. The resulting rise in blood sugar stimulates your pancreas to produce insulin, a hormone that helps sugar move from your . . . ",
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
                    borderRadius: BorderRadius.circular(20),
                  ),
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
