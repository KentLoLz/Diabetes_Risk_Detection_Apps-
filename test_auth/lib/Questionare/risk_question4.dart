import 'package:flutter/material.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/Questionare/risk_question3.dart';
import 'package:test_auth/Questionare/risk_question5.dart';

class RiskQues4 extends StatefulWidget {
  @override
  State<RiskQues4> createState() => _RiskQues4State();
}

class _RiskQues4State extends State<RiskQues4> {
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
                child: Text("Question 4"),
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
                          "What is your Gender ?",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          "assets/images/gender.png",
                          width: size.width * 0.75,
                          height: size.height * 0.35,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 113, 209, 250),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(
                          color: const Color.fromRGBO(0, 113, 182, 1),
                          width: 4,
                        ),
                      ),
                      height: size.height * 0.2,
                      width: size.height * 0.2,
                      child: Column(
                        children: [
                          TextButton(
                            child: Image.asset(
                              "assets/images/male_sign.png",
                              width: size.width * 0.23,
                              height: size.width * 0.23,
                            ),
                            onPressed: () {
                              predictData.add(1);
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
                          ),
                          const Text(
                            "Male",
                            style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //no Button
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 113, 209, 250),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: const Color.fromRGBO(0, 113, 182, 1),
                        width: 4,
                      ),
                    ),
                    height: size.height * 0.2,
                    width: size.height * 0.2,
                    child: Column(
                      children: [
                        TextButton(
                          child: Image.asset(
                            "assets/images/female_sign.png",
                            width: size.width * 0.23,
                            height: size.width * 0.23,
                          ),
                          onPressed: () {
                            predictData.add(0);
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
                        ),
                        const Text(
                          "Female",
                          style: TextStyle(
                            fontFamily: "Franklin",
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                          predictData.removeAt(2);
                          print(predictData);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RiskQues3();
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
