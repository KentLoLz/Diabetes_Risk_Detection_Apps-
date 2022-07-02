import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test_auth/Questionare/feedback_prediction.dart.dart';
import 'package:test_auth/Questionare/prediction_no.dart';
import 'package:test_auth/Questionare/prediction_yes.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/Questionare/risk_question9.dart';

void InfoColumn(BuildContext context) {
// set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text("Itching"),
    content: Text(
        "Localized itching is often caused by diabetes. It can be caused by a yeast infection, dry skin, or poor circulation. When poor circulation is the cause of itching, the itchiest areas may be the lower parts of the legs."),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class RiskQues10 extends StatefulWidget {
  @override
  State<RiskQues10> createState() => _RiskQues10State();
}

class _RiskQues10State extends State<RiskQues10> {
  final url = "https://rzt72o4nx8.execute-api.us-east-1.amazonaws.com/mlmodel/";

  void postData() async {
    print("lol");
    try {
      final response = await post(
        Uri.parse(url),
        body: jsonEncode({
          "data": [predictData],
        }),
      );
      print(response.body);
      if (response.body == '1') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const PredictionYes();
            },
          ),
        );
        print("Yes High Risk Diabetes");
      } else if (response.body == '0') {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const PredictionNo();
            },
          ),
        );
        print("No Low Risk Diabetes");
      }
    } on Exception catch (e) {
      print(e);
    }
  }

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
                child: Text("Question 10"),
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
                          "Are You Having Itching Problem ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Image.asset(
                          "assets/images/itching.png",
                          width: size.width * 0.75,
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
                      postData();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Feedback_Prediction();
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
              //No Button
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
                    postData();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const Feedback_Prediction();
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
              //Back Button
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
                          predictData.removeAt(8);
                          print(predictData);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RiskQues9();
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
