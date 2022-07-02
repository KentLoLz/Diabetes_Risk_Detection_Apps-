import 'package:flutter/material.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/Questionare/risk_question5.dart';
import 'package:test_auth/Questionare/riskl_question7.dart';

void InfoColumn(BuildContext context) {
// set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text("Sudden Weight Lost"),
    content: Text(
        "In people with diabetes, insufficient insulin prevents the body from getting glucose from the blood into the body’s cells to use as energy. When this occurs, the body starts burning fat and muscle for energy, causing a reduction in overall body weight. "),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class RiskQues6 extends StatefulWidget {
  @override
  State<RiskQues6> createState() => _RiskQues6State();
}

class _RiskQues6State extends State<RiskQues6> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(152, 221, 252, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const DefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'Franklin',
                  color: Colors.white,
                  fontSize: 30,
                ),
                child: Text("Question 6"),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent, //Colors.grey,
                      border: Border.all(
                        color: const Color.fromRGBO(0, 113, 182, 1),
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          "Are You Having Sudden Weight Lost ?",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        Image.asset(
                          "assets/images/weightlost.png",
                          width: size.width * 0.6,
                          height: size.height * 0.25,
                        ),
                        TextButton(
                          onPressed: () {
                            InfoColumn(context);
                          },
                          child: Image.asset(
                            "assets/images/info_button.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 22, 179, 247),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(
                      color: const Color.fromRGBO(0, 113, 182, 1),
                      width: 4,
                    ),
                  ),
                  height: size.height * 0.09,
                  width: size.height * 0.4,
                  child: TextButton(
                    onPressed: () {
                      predictData.add(1);
                      print(predictData);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RiskQues7();
                          },
                        ),
                      );
                    },
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Yes",
                            style: TextStyle(
                                fontFamily: "Franklin",
                                color: Colors.white,
                                fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              //no Button
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 22, 179, 247),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: const Color.fromRGBO(0, 113, 182, 1),
                    width: 4,
                  ),
                ),
                height: size.height * 0.09,
                width: size.height * 0.4,
                child: TextButton(
                  onPressed: () {
                    predictData.add(0);
                    print(predictData);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RiskQues7();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "No",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 32, 71, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      height: size.height * 0.06,
                      width: size.width * 0.4,
                      child: TextButton(
                        onPressed: () {
                          predictData.removeAt(4);
                          print(predictData);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RiskQues5();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          '< Back ',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Franklin",
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: TextButton(
                  //     onPressed: () {
                  //       InfoColumn(context);
                  //     },
                  //     child: Image.asset(
                  //       "assets/images/info_button.png",
                  //       height: 50,
                  //       width: 50,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
