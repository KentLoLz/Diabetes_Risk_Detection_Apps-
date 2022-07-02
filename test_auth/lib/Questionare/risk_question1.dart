import 'package:flutter/material.dart';
import 'package:test_auth/Questionare/risk_question2.dart';
import 'package:test_auth/screens/dashboard.dart';

void InfoColumn(BuildContext context) {
// set up the AlertDialog
  AlertDialog alert = const AlertDialog(
    title: Text("Polyuria"),
    content: Text(
        "Polyuria is excessive or an abnormally large production or passage of urine (greater than 2.5 L or 3 L over 24 hours in adults). "),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class RiskQues1 extends StatefulWidget {
  @override
  State<RiskQues1> createState() => _RiskQues1State();
}

List<int> predictData = <int>[];

class _RiskQues1State extends State<RiskQues1> {
  // List<Response> _answer = <Response>[];
  // var hamham;
  // @override
  // void initState() {
  //   super.initState();
  //   _answer = getAnswer(hamham);
  // }

  // List<Response> getAnswer(int finalvar) {
  //   List<Response> data = <Response>[];
  //   Response lol = Response(predictData: 0);
  //   lol = Response(predictData: finalvar);
  //   data.add(lol);
  //   return data;
  // }

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
                child: Text("Question 1"),
                textAlign: TextAlign.center,
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
                          "Are You Having Polyuria ?",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Image.asset(
                          "assets/images/polyuria.png",
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
                      // addData(1);
                      // setState(() {
                      //   hamham = 5;
                      // });
                      // getAnswer(hamham);
                      // print(_answer[0]);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RiskQues2();
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
                          return RiskQues2();
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
                          print(predictData);
                          predictData.clear();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DashboardScreen();
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
