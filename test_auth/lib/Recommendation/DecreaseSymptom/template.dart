import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:test_auth/components/constants.dart';

class Template extends StatefulWidget {
  final String txt;
  final String title;
  const Template({
    Key? key,
    required this.txt,
    required this.title,
  }) : super(key: key);

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  String textFromFile = "";

  Future<void> getData() async {
    final String response;
    response = await rootBundle.loadString(widget.txt);
    setState(() {
      textFromFile = response;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    getData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: "Franklin",
                      fontSize: 25,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  width: 500,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        textFromFile,
                        style: const TextStyle(
                            fontFamily: "Franklin",
                            color: Colors.white,
                            fontSize: 15),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      border: Border.all(
                        color: Colors.red,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
