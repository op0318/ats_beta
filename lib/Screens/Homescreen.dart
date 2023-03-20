import 'package:ats_beta/Screens/WelcomePages/Splashscreen.dart';
import 'package:ats_beta/Screens/Authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'WelcomePages/WelcomePage1.dart';
import 'WelcomePages/WelcomePage2.dart';
import 'WelcomePages/WelcomePage3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller = PageController();
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Scaffold(
       backgroundColor: Colors.lightBlue,
      body: PageView(
        controller: Controller,
        children:  [
          Page1(),
          Page2(),
          Page3(),


        ],

      ),


    );
  }
}




