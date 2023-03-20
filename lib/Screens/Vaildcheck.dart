import 'package:flutter/material.dart';

class valid extends StatelessWidget {
  const valid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children:  [
          const Image(image: AssetImage('assets/images/page4(1).png')),
          Padding(
            padding:  EdgeInsets.only(right: Width/20),
            child: Text('Please Enter Valid Your Employee Id', style:TextStyle(color: const Color(0xffA19F9F), fontSize:Height/35, fontWeight:FontWeight.normal )),
          ),
          Padding(
            padding: EdgeInsets.only(right: Width/10, left: Width/10),
            child:  Text('your EmployeeID must be atleast 5 numbers long', style: TextStyle(color: const Color(0xffA19F9F),fontSize:Height/35, fontWeight:FontWeight.normal),),
          ),
          SizedBox(height :Height/80),
          RaisedButton(onPressed: (){},color: const Color(0xfff14141),
            child:  const Text('please'
                'Try Again'),),
          Row(
            children:   [
              const Image(image: AssetImage('assets/images/page4(2).png')),
              const Image(image: AssetImage('assets/images/page4(3).png')),
          ],)
        ],
      ),
    );
  }
}




