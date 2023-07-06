import 'dart:async';

import 'package:flutter/material.dart';

import '../Homescreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder:
            (context) => const HomeScreen()
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('ATS', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Color(0xff010729)),)),
    );
  }
}