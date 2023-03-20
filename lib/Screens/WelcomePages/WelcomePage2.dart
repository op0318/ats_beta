import 'package:ats_beta/Widgets/SkipandNext.dart';
import 'package:flutter/material.dart';

import 'WelcomePage1.dart';
import 'WelcomePage3.dart';


class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        color: Colors.blue,
        child: Column(
          children:  [
            Padding(
              padding: EdgeInsets.symmetric(vertical:Height/10, horizontal: Width/20  ),
              child: const Image(image: AssetImage('assets/images/page2.png')),
            ),
            Text('Monitoring' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
            SizedBox(height: Height/50,),
            Padding(
              padding:  EdgeInsets.only(left: Width/15, right: Width/20),
              child: Text('App is Based on Monitoring Daily and Monthly Attendance Details of employees',
                style:TextStyle(color:  const Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal),
              ),
            ),
            SkipAndNext()

          ],
        ),
      ),
    );
  }
}