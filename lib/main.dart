import 'package:ats_beta/Screens/WelcomePages/Splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: splashscreen(),
     debugShowCheckedModeBanner: false,
     // home:valid(),
    );
  }
}






