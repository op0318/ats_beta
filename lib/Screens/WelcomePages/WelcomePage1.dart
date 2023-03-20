import 'package:ats_beta/Widgets/SkipandNext.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Splashscreen.dart';
import 'WelcomePage2.dart';


class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final Controller = PageController();
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(image: AssetImage('assets/images/page1.png')),
            SizedBox(height: Height/10,),
            Text('Tracking and you are the next' , style: TextStyle(fontSize:Height/30, color: Color(0xffffffff), fontWeight: FontWeight.bold ),),
            SizedBox(height: Height/60,),
            Padding(
              padding:  EdgeInsets.only(left: Width/15, right: Width/20),
              child: Text('App is basessssssssss on tracking the location details of the employee login & logout time',
                  style:TextStyle(color: const Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal) ),
            ),
            SizedBox(height: Height/50,),
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
            SkipAndNext(),
          ],
        ),
      ),
    );
  }
}
