import 'package:ats_beta/Screens/pages/page2.dart';
import 'package:flutter/material.dart';

import '../Authentication/login.dart';
import '../WelcomePages/Splashscreen.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;

    return  Scaffold(
        body: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children:  [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Width/10, vertical: Height/10),
                child: const Image(image: AssetImage('assets/images/page3.png')),
              ),
              SizedBox(height: Height/40,),
              Text('Visualizing' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
              SizedBox(height: Height/50,),
              Padding(
                padding: EdgeInsets.only(left: Width/15, right: Width/20),
                child: Text('App  is based on Visualizing the employee details', style:TextStyle(color:  Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right:Width/5, top: Height/8),
                    child: TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:
                          (context) => const Page2()));
                    },
                        child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: Width/5, top: Height/8),
                    child: TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:
                          (context) => Employeepage()));
                    }, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
                    ),
                  )
                ],)
            ],
          ),
        )
    );
  }
}

