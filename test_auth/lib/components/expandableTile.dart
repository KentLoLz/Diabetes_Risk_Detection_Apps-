import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class ExpandableTile extends StatefulWidget {
  final String title;
  final String cause;
  final String symptom;
  final String treatment;
  const ExpandableTile({
    Key? key,
    required this.title,
    required this.cause,
    required this.symptom,
    required this.treatment,
  }) : super(key: key);

  @override
  State<ExpandableTile> createState() => _ExpandableTileState();
}

class _ExpandableTileState extends State<ExpandableTile> {
  String textFromFile1 = "";
  String textFromFile2 = "";
  String textFromFile3 = "";
  String columnTitle1 = "Cause";
  String columnTitle2 = "Symptom";
  String columnTitle3 = "Treatment";

  Future<void> getData() async {
    final String response1;
    final String response2;
    final String response3;
    response1 = await rootBundle.loadString(widget.cause);
    response2 = await rootBundle.loadString(widget.symptom);
    response3 = await rootBundle.loadString(widget.treatment);
    setState(() {
      textFromFile1 = response1;
      textFromFile2 = response2;
      textFromFile3 = response3;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    //getData1();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(134, 186, 161, 1),
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 197, 236, 206)),
        child: ListView(
          children: [
            card(columnTitle1, textFromFile1),
            card(columnTitle2, textFromFile2),
            card(columnTitle3, textFromFile3),
          ],
        ),
      ),
    );
  }

  card(columnTitle, text) {
    return ExpandableNotifier(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Card(
          color: const Color.fromARGB(255, 205, 223, 142),
          child: Column(
            children: [
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: const ExpandableThemeData(
                      iconColor: Colors.white,
                      tapBodyToCollapse: true,
                      tapBodyToExpand: true),
                  header: Container(
                    color: const Color.fromARGB(255, 180, 211, 147),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        columnTitle,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // for (var _ in Iterable.generate(5))
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(text,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            style: const TextStyle(
                                height: 2,
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  collapsed: Text(text,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          height: 2,
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(
                          crossFadePoint: 0,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
