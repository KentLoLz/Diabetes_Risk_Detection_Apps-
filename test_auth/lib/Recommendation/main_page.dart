import 'package:flutter/material.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/symdecrease_mainpage.dart';
import 'package:test_auth/Recommendation/RiskSymptom/riskdecrease_mainpage.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 125, 187, 118),
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
                child: Text("Recommendations"),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(129, 222, 118, 1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 219, 172, 1),
                    width: 4,
                  ),
                ),
                height: size.height * 0.25,
                width: size.height * 0.4,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SymDecreaseMain();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: Text(
                          "Recommendation to decrease the symptoms of diabetes",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Franklin",
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(129, 222, 118, 1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: const Color.fromRGBO(255, 219, 172, 1),
                    width: 4,
                  ),
                ),
                height: size.height * 0.25,
                width: size.height * 0.4,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const RiskDecreaseMain();
                        },
                      ),
                    );
                  },
                  child: Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: Text(
                          "Recommendation to decrease the risk of getting diabetes",
                          textAlign: TextAlign.center,
                          //textAlign: TextAlgin,
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
            ],
          ),
        ),
      ),
    );
  }
}
