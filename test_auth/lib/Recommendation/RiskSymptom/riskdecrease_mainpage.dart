import 'package:flutter/material.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk1.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk2.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk3.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk4.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk5.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk6.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk7.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk8.dart';
import 'package:test_auth/Recommendation/RiskSymptom/decreaserisk9.dart';

import '../../components/symrisk_container.dart';

class RiskDecreaseMain extends StatefulWidget {
  const RiskDecreaseMain({Key? key}) : super(key: key);

  @override
  State<RiskDecreaseMain> createState() => _RiskDecreaseMainState();
}

class _RiskDecreaseMainState extends State<RiskDecreaseMain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 141, 168, 146),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Recommendation to decrease the risk of getting diabetes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Franklin",
                      fontSize: 25,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Reduce your total carb intake",
                      describe:
                          "The quantity and quality of your carb intake are both important factors to consider when making dietary changes to help prevent diabetes. Your body breaks down carbs into small sugar molecules, which are absorbed into your bloodstream. The resulting rise in blood sugar stimulates your pancreas to produce insulin, a hormone that helps sugar move from your . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk1();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
                //Excercise Regular Button
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Exercise regularly",
                      describe:
                          "Doing physical activity regularly may help prevent diabetes. People with prediabetes often have reduced insulin sensitivity, also known as insulin resistance. In this state, your pancreas has to make more insulin to get sugar out of your blood and into cells  Exercise increases the insulin sensitivity of your cells, meaning that you need less insulin to manage your blood sugar levels . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk2();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                //Water as Beverage
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Drink water as your primary beverage",
                      describe:
                          "Sticking with water as your drink of choice will help you limit beverages that are high in sugar. Sugary beverages like soda and sweetened fruit juice have been linked to an increased risk of both type 2 diabetes and latent autoimmune diabetes of adults (LADA). One large observational study in 2,800 people found that those who drank more than 2 servings of sugary beverages per day  . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk3();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Try to lose excess weight",
                      describe:
                          "Carrying extra weight may increase your risk of type 2 diabetes.In particular, visceral fat — excess weight in your midsection and around your abdominal organs — is associated with insulin resistance, inflammation, prediabetes, and type 2 diabetes Notably, losing even a small amount of weight — as little as 5 to 7% — may help lower  . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk4();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Quit smoking",
                      describe:
                          "Smoking has been shown to cause or contribute to many serious health conditions, including heart disease, chronic obstructive pulmonary disease (COPD), and lung and intestinal cancers Research also links smoking to type 2 diabetes. While the mechanisms aren’t fully understood, it’s tho  . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk5();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Follow a high fiber diet",
                      describe:
                          "Eating portion sizes appropriate for your needs may also help prevent diabetes. Eating too much food at one time has been shown to cause higher blood sugar and insulin levels in people at risk of diabetes. Conversely, eating smaller portions may lead to reduced calorie intake and subsequent weight loss, which may in turn lower your risk  . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk6();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Optimize your vitamin D levels",
                      describe:
                          "Vitamin D is important for blood sugar management. Indeed, studies link vitamin D deficiency to insulin resistance and type 2 diabetes Some studies also show that vitamin D supplements may improve many aspects of blood sugar management in people with prediabetes, compared with control groups. However,    . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk7();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Minimize your intake of highly processed foods",
                      describe:
                          "Lowering your intake of heavily processed foods benefits several aspects of health. Many foods undergo some form of processing. Thus, processed foods, which include plain yogurt and frozen vegetables, aren’t inherently unhealthy.    . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk8();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Reduce your portion sizes",
                      describe:
                          "Eating portion sizes appropriate for your needs may also help prevent diabetes. Eating too much food at one time has been shown to cause higher blood sugar and insulin levels in people at risk of diabetes Conversely, eating smaller portions  . . . . ",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DecreaseRisk9();
                            },
                          ),
                        );
                      },
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Find Out More >",
                          style: TextStyle(
                              color: Color.fromRGBO(255, 231, 209, 1),
                              fontFamily: "Franklin",
                              fontSize: 15),
                        ),
                      ),
                    )
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
