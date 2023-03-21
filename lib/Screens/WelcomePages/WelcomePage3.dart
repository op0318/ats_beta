import 'package:flutter/material.dart';

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
          color: Color(0xff367df7),
          child: Column(

            children:  [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Width/60, vertical: Height/30),
                child: const Image(image: AssetImage('assets/images/page3.png')),
              ),
              Text('Visualizing' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
              SizedBox(height: Height/50,),
              Padding(
                padding: EdgeInsets.only(left: Width/15, right: Width/20),
                child: Text('App  is based on Visualizing the employee details', style:TextStyle(color:  Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal),),
              ),
              SizedBox(height: Height/30,),

            ],
          ),
        )
    );
  }
}
