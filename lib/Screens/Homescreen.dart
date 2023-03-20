import 'package:ats_beta/Screens/Splashscreen.dart';
import 'package:ats_beta/Screens/login.dart';
import 'package:ats_beta/Screens/pages/page1.dart';
import 'package:ats_beta/Screens/pages/page2.dart';
import 'package:ats_beta/Screens/pages/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      body: Column(
        children: [
          SizedBox(
            child: PageView(
              controller: Controller,
              children:  [
                Page1(),
                Page2(),
                Page3(),
                SmoothPageIndicator(
                  controller: Controller,
                  count: 3,
                  effect: const WormEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thin,
                    // strokeWidth: 5,
                  ),
                ),

              ],

            ),
          ),
          SmoothPageIndicator(
            controller: Controller,
            count: 3,
            effect: const WormEffect(
              dotHeight: 16,
              dotWidth: 16,
              type: WormType.thin,
              // strokeWidth: 5,
            ),
          ),

        ],
      ),



    );
  }
}





