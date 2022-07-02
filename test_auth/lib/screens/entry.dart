import 'package:flutter/material.dart';
import 'package:test_auth/screens/Welcome/welcome_screen.dart';


class EntryScreen extends StatefulWidget {
  @override
  _EntryScreenState createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 11, 34),
      body: Center(
        child: WelcomeScreen(),
      ),
    );
  }
}
