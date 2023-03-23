import 'package:flutter/material.dart';

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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                stops: [0.3, 1],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Color(0xff0185c8),
                  Color(0xff004466),
                ])
        ),
        child: Column(
          children:  [
            Padding(
              padding:  EdgeInsets.only(top: Height/16),
              child: Image(image: const AssetImage('assets/images/page2.png'),height: Height/2.7, width: Width/1.1,),
            ),
            Text('Monitoring' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
            SizedBox(height: Height/50,),
            Padding(
              padding:  EdgeInsets.only(left: Width/15, right: Width/20),
              child: Text('App is Based on Monitoring Daily and Monthly Attendance Details of employees',
                style:TextStyle(color:  const Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}