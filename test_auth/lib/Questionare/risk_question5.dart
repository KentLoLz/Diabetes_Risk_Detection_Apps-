import 'package:flutter/material.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/Questionare/risk_question4.dart';
import 'package:test_auth/Questionare/risk_question6.dart';

void InfoColumn(BuildContext context) {
// set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text("Partial Paresis"),
    content: Text(
        "Also called focal neuropathies, these are more common in people with diabetes and involve damage to a single nerve. It may affect the shoulder, hand, leg, feet or face and may be caused by pressure on a nerve. This can cause weakness, pain, numbness or even paralysis. "),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class RiskQues5 extends StatefulWidget {
  @override
  State<RiskQues5> createState() => _RiskQues5State();
}

class _RiskQues5State extends State<RiskQues5> {
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
                child: Text("Question 5"),
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
                          "Are You Having Partial Paresis ?",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Image.asset(
                          "assets/images/partial_paresis.png",
                          width: size.width * 0.8,
                          height: size.height * 0.3,
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
                            return RiskQues6();
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
                          return RiskQues6();
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
                          predictData.removeAt(3);
                          print(predictData);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RiskQues4();
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
