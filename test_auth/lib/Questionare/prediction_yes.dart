import 'package:flutter/material.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/screens/dashboard.dart';

class PredictionYes extends StatefulWidget {
  const PredictionYes({Key? key}) : super(key: key);

  @override
  State<PredictionYes> createState() => _PredictionYesState();
}

class _PredictionYesState extends State<PredictionYes> {
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
                child: Text("Diabetes Risk Result"),
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
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          "You have a high risk on getting diabetes based on your inferencing !",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 18),
                        ),
                        Image.asset(
                          "assets/images/high_risk.png",
                          width: size.width * 0.7,
                          height: size.height * 0.3,
                        ),
                      ],
                    ),
                  ),
                ),
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
                      children: const <Widget>[
                        Text(
                          "Your risk for having diabetes is high. Only your doctor can tell for sure if you have diabetes or prediabetes. These conditions often do not cause any symptoms; so, don’t wait to make an appointment with your doctor. ",
                          style: TextStyle(
                              fontFamily: "Franklin",
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 32, 71, 1),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  height: size.height * 0.08,
                  width: size.height * 0.4,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DashboardScreen();
                          },
                        ),
                      );
                      predictData.clear();
                      print(predictData);
                    },
                    child: Column(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Done",
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
            ],
          ),
        ),
      ),
    );
  }
}
