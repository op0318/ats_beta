
import 'package:flutter/material.dart';



class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Container(
        color: Color(0xff1d8cbf),
        child: Column(

          children:  [
            const Image(image: AssetImage('assets/images/page1.png')),
            SizedBox(height: Height/50,),
            Text('Tracking' , style: TextStyle(fontSize:Height/30, color: Color(0xffffffff), fontWeight: FontWeight.bold ),),
            SizedBox(height: Height/60,),
            Padding(
              padding:  EdgeInsets.only(left: Width/15, right: Width/20),
              child: Text('App is based on tracking the location details of the employee login & logout time',
                  style:TextStyle(color: const Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal) ),
            ),

          ],
        ),
      ),
    );
  }
}
