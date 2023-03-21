
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Widgets/SkipandNext.dart';
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
       backgroundColor: Color(0xff367df7),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: Height/1.5,
                  width: Width,
                  child: PageView(
                  controller: Controller,
                    children:  const [

                      Page1(),
                      Page2(),
                      Page3(),
                    ],

                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:Height/90),
                  child: SmoothPageIndicator(
                    controller: Controller,
                    count: 3,
                    effect: SwapEffect(
                      activeDotColor: Colors.red,
                      dotColor: Colors.deepPurple.shade100,
                      dotHeight:  Height/60,
                      dotWidth: Width/40,
                      //spacing: 16,
                      //verticalOffset: 50,

                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: Height/70.5),
                  child: SkipAndNext(),
                )
              ],
            ),
      ),
          // dot indicators




    );
  }
}




