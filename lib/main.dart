import 'package:ats_beta/Screens/Dashboard/Dashboard.dart';
import 'package:ats_beta/Screens/WelcomePages/Splashscreen.dart';
import 'package:ats_beta/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
     // home:valid(),
    );
  }
}

//THis is a check






