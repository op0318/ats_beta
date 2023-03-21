import 'package:ats_beta/Screens/Authentication/login.dart';
import 'package:flutter/material.dart';


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
          padding: EdgeInsets.only(right:Width/4,bottom: Height/6),
          child: TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder:
                (context) => Employeepage())
            );
          },
              child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
        ),
        Padding(
          padding: EdgeInsets.only(left: Width/5, bottom: Height/6),
          child: TextButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder:
                (context) =>  Employeepage()));
          }, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
          ),
        )
      ],);
  }
}
