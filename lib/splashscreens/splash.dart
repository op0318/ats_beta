

import 'package:ats_beta/splashscreens/splashbody.dart';
import 'package:flutter/material.dart';

import '../Screens/Homescreen.dart';

class Splshscreen extends StatefulWidget {
  const Splshscreen({Key? key}) : super(key: key);

  @override
  State<Splshscreen> createState() => _SplshscreenState();
}

class _SplshscreenState extends State<Splshscreen> {
  @override
  Route _createRoute() {
    return PageRouteBuilder(
      barrierColor: Colors.transparent,
      transitionDuration: const Duration(milliseconds: 800,),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const HomeScreen();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  void startTimeToNavigate() {
    Future.delayed(const Duration(seconds: 10,),).then((value) {
      Navigator.push(context, _createRoute(),);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SplashBody(
        onComplete: startTimeToNavigate,
      ),
    );
  }
}