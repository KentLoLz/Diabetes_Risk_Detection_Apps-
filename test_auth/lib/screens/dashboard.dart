import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:test_auth/Questionare/prediction_yes.dart';
import 'package:test_auth/Questionare/risk_question1.dart';
import 'package:test_auth/Recommendation/main_page.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  AuthUser? _user = null;

  @override
  void initState() {
    super.initState();
    Amplify.Auth.getCurrentUser().then((user) {
      setState(() {
        _user = user;
      });
    }).catchError((error) {
      print((error as AuthException).message);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(134, 186, 161, 1),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 60,
                ),
                const DefaultTextStyle(
                  style: TextStyle(
                    fontFamily: 'Franklin',
                    color: Colors.white,
                    fontSize: 60,
                  ),
                  child: Text("Main Menu"),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: GridView.count(
                    padding: EdgeInsets.fromLTRB(95, 0, 95, 0),
                    crossAxisCount: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23.0),
                          ),
                          color: const Color.fromARGB(255, 197, 236, 206),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return RiskQues1();
                                      },
                                    ),
                                  );
                                },
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Ink.image(
                                      image: const AssetImage(
                                          "assets/images/risk_checker.png"),
                                      height: 90,
                                      width: 90,
                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Center(
                                      child: Text(
                                        "Diabetes Risk Checker",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(72, 61, 3, 1),
                                            fontFamily: "Franklin"),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //2nd Button
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        color: const Color.fromARGB(255, 197, 236, 206),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      //return PredictionYes();
                                      return MainPage();
                                    },
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Ink.image(
                                    image: const AssetImage(
                                        "assets/images/recommendation.png"),
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Center(
                                    child: Text(
                                      "Recommendation",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromRGBO(72, 61, 3, 1),
                                          fontFamily: "Franklin"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //3rd Button
                      // Card(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(23.0),
                      //   ),
                      //   color: const Color.fromARGB(255, 197, 236, 206),
                      //   child: Column(
                      //     children: [
                      //       InkWell(
                      //         onTap: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //               builder: (context) {
                      //                 return const HomeScreen();
                      //               },
                      //             ),
                      //           );
                      //         },
                      //         child: Column(
                      //           children: [
                      //             const SizedBox(
                      //               height: 20,
                      //             ),
                      //             Ink.image(
                      //               image: const AssetImage(
                      //                   "assets/images/bmi.png"),
                      //               height: 100,
                      //               width: 100,
                      //               fit: BoxFit.cover,
                      //             ),
                      //             const SizedBox(
                      //               height: 25,
                      //             ),
                      //             const Center(
                      //               child: Text(
                      //                 "BMI Calculator",
                      //                 style: TextStyle(
                      //                     fontSize: 15,
                      //                     color: Color.fromRGBO(72, 61, 3, 1),
                      //                     fontFamily: "Franklin"),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      //logout buttomn
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        color: const Color.fromARGB(255, 197, 236, 206),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Amplify.Auth.signOut().then((_) {
                                  Navigator.pushReplacementNamed(context, '/');
                                });
                              },
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Ink.image(
                                    image: const AssetImage(
                                        "assets/images/logout.png"),
                                    height: 90,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  const Center(
                                    child: Text(
                                      "Log Out",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color.fromRGBO(72, 61, 3, 1),
                                          fontFamily: "Franklin"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                //1st Button
                // Container(
                //   width: 350,
                //   child: Column(
                //     children: [
                //       FlatButton(
                //         child: Image.asset(
                //           "assets/images/riskchecker.png",
                //           width: size.width * 0.4,
                //         ),
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) {
                //                 return RiskQues1();
                //               },
                //             ),
                //           );
                //         },
                //       ),
                // const Text(
                //   "Diabetes Risk Checker",
                //   style: TextStyle(
                //       color: Colors.black,
                //       fontFamily: "Franklin",
                //       fontSize: 20),
                // )
                //     ],
                //   ),
                //   decoration: BoxDecoration(
                //       color: Color.fromRGBO(217, 241, 255, 1),
                //       border: Border.all(
                //         color: Colors.red,
                //         width: 5,
                //       ),
                //       borderRadius: BorderRadius.circular(20)),
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
                // //2nd Button
                // Container(
                //   width: 350,
                //   child: Column(
                //     children: [
                //       FlatButton(
                //         child: Image.asset(
                //           "assets/images/Recommendation_sign.png",
                //           width: size.width * 0.9,
                //         ),
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //               builder: (context) {
                //                 return MainPage();
                //               },
                //             ),
                //           );
                //         },
                //       ),
                //       const Text(
                //         "Recommendation",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontFamily: "Franklin",
                //             fontSize: 20),
                //       )
                //     ],
                //   ),
                //   decoration: BoxDecoration(
                //       color: Colors.grey,
                //       border: Border.all(
                //         color: Colors.red,
                //         width: 5,
                //       ),
                //       borderRadius: BorderRadius.circular(20)),
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
                // //3rd Button
                // Container(
                //   padding: const EdgeInsets.symmetric(vertical: 0.8),
                //   width: 350,
                //   child: Column(
                //     children: [
                //       FlatButton(
                //         child: Image.asset(
                //           "assets/images/logout_sign.png",
                //           width: size.width * 0.35,
                //         ),
                //         onPressed: () {
                //           Amplify.Auth.signOut().then((_) {
                //             Navigator.pushReplacementNamed(context, '/');
                //           });
                //         },
                //       ),
                //       const Text(
                //         "Log Out",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontFamily: "Franklin",
                //             fontSize: 20),
                //       )
                //     ],
                //   ),
                //   decoration: BoxDecoration(
                //       color: Colors.grey,
                //       border: Border.all(
                //         color: Colors.red,
                //         width: 5,
                //       ),
                //       borderRadius: BorderRadius.circular(20)),
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
