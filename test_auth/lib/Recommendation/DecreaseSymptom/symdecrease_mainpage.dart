import 'package:flutter/material.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym1.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym2.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym3.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym4.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym5.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym6.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym7.dart';
import 'package:test_auth/Recommendation/DecreaseSymptom/decreasesym8.dart';
import 'package:test_auth/components/symrisk_container.dart';

class SymDecreaseMain extends StatefulWidget {
  @override
  State<SymDecreaseMain> createState() => _SymDecreaseMainState();
}

class _SymDecreaseMainState extends State<SymDecreaseMain> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 141, 168, 146),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Recommendation to decrease the symptoms of diabetes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Franklin",
                      fontSize: 25,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const SymRiskContainer(
                      title: "Alopecia",
                      describe:
                          "Cause -High blood sugar levels; Damage to blood vessels can restrict blood flow, resulting in certain cells getting less oxygen and nutrients than they need. This deficiency can negatively impact the normal growth cycle of hair follicles, which can ...",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym1();
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
                    ),
                    const SymRiskContainer(
                      title: "Delayed Wound Healing",
                      describe:
                          "Causes -People with uncontrolled diabetes may develop poor circulation. As circulation slows down, blood moves more slowly, which makes it more difficult for the body to deliver nutrients to wounds. As a result, the injuries heal slowly, or ...",
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym2();
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
                    ),
                    const SymRiskContainer(
                        title: "Irritability",
                        describe:
                            "Feeling a range of highs and lows is not uncommon if you have diabetes. Your blood sugar impacts how you feel and can contribute to mood swings. Poor management of blood glucose can lead to negative moods and a lower quality of life. Symptoms ... "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym3();
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
                    ),
                    const SymRiskContainer(
                        title: "Itching",
                        describe:
                            "Cause -The cause of diabetes-related itching is diabetic polyneuropathy or peripheral neuropathy. These are complications of diabetes that develop when high blood glucose levels cause damage to nerve fibers, particularly those in the feet an ... "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym4();
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
                    ),
                    const SymRiskContainer(
                        title: "Partial Paresis",
                        describe:
                            "Causes  -Researchers think that over time, uncontrolled high blood sugar damages nerves and interferes with their ability to send signals, leading to diabetic neuropathy. High blood sugar also weakens the walls of the small blood vessels (ca ... "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym5();
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
                    ),
                    const SymRiskContainer(
                        title: "Polydipsia",
                        describe:
                            "Causes -Diabetes mellitus causes polydipsia because your blood sugar levels get too high and make you feel thirsty, regardless of how much water you drink. Diabetes insipidus occurs when your body’s fluid levels are out of balance. ... "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym6();
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
                    ),
                    const SymRiskContainer(
                        title: "Polyuria",
                        describe:
                            "-Type 1 and type 2 diabetes. Polyuria is often one of the first signs of diabetes. The condition makes sugar build up in your bloodstream. If your kidneys aren’t able to filter it out, it exits your body in your urine. As the extra sugar and fluids travel thro ... "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym7();
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
                    ),
                    const SymRiskContainer(
                        title: "Sudden Weight Lost",
                        describe:
                            "Cause  -In people with diabetes, insufficient insulin prevents the body from getting glucose from the blood into the body’s cells to use as energy. When this occurs, the body starts burning fat and muscle for energy, causing a reduc ... "),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const DecreaseSym8();
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
