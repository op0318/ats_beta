import 'package:flutter/material.dart';

import '../Screens/WelcomePages/Splashscreen.dart';
import '../Screens/WelcomePages/WelcomePage2.dart';

class SkipAndNext extends StatelessWidget {
  const SkipAndNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: EdgeInsets.only(right:Width/4,top: Height/9),
          child: TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder:
                (context) => splashscreen()
            )
            );
          },
              child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
        ),
        Padding(
          padding: EdgeInsets.only(left: Width/5, top: Height/9),
          child: TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder:
                (context) => const Page2()));
          }, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
          ),
        )
      ],);
  }
}
