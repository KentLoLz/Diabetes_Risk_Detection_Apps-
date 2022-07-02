import 'package:flutter/material.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/Questionare/risk_question2.dart';
import 'package:test_auth/Questionare/risk_question4.dart';

class RiskQues3 extends StatefulWidget {
  @override
  State<RiskQues3> createState() => _RiskQues3State();
}

class _RiskQues3State extends State<RiskQues3> {
  final TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(152, 221, 252, 1),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const DefaultTextStyle(
                  style: TextStyle(
                    fontFamily: 'Franklin',
                    color: Colors.white,
                    fontSize: 30,
                  ),
                  child: Text("Question 3"),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent, //Colors.grey,
                        border: Border.all(
                          color: const Color.fromRGBO(0, 113, 182, 1),
                          width: 4,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          const Text(
                            "What is your Age ?",
                            style: TextStyle(
                                fontFamily: "Franklin",
                                color: Colors.white,
                                fontSize: 20),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Image.asset(
                            "assets/images/age.png",
                            width: size.width * 0.8,
                            height: size.height * 0.3,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 79, 167, 207),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextFormField(
                      controller: ageController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        // icon: Icon(
                        //   Icons.password_rounded,
                        //   color: Colors.white,
                        // ),
                        // suffixIcon: Icon(
                        //   Icons.visibility,
                        //   color: Colors.white,
                        // ),
                        hintText: "Enter Your Age",
                        hintStyle: TextStyle(
                            fontFamily: "Franklin",
                            fontSize: 18,
                            color: Colors.white),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
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
                      predictData.add(int.parse(ageController.text));
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
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Confirm",
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
                            predictData.removeAt(1);
                            print(predictData);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RiskQues2();
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
      ),
    );
  }
}
