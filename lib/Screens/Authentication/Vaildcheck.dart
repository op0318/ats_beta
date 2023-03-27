import 'package:flutter/material.dart';

import 'login.dart';


class valid extends StatelessWidget {
  const valid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Image(image: const AssetImage('assets/images/page4(1).png'), width: Width/1, height: Height/2.5,),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: Width/20),
                  child: Container(height: Height/60,width: Width/40, 

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffA19F9F),
                  ),),
                ),
                SizedBox(width: Width/50,),
                Padding(
                  padding:  EdgeInsets.only(right: Width/30),
                  child: Text('Please Enter Valid Your Employee Id', style:TextStyle(color: const Color(0xffA19F9F), fontSize:Height/35, fontWeight:FontWeight.normal )),
                ),
              ],
            ),
            SizedBox(height: Height/70,),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: Width/20),
                  child: Container(height: Height/60,width: Width/40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffA19F9F),
                    ),),
                ),
                SizedBox(width: Width/60,),
                Padding(
                  padding:  EdgeInsets.only(right: Width/12.5),
                  child: Text('your EmployeeID must be atleast 5', style: TextStyle(color: const Color(0xffA19F9F),fontSize:Height/35, fontWeight:FontWeight.normal),),
                ),
              ],
            ),
            SizedBox(height: Height/70,),
            Padding(
              padding:  EdgeInsets.only(right: Width/2),
              child: Text('numbers long', style: TextStyle(color: const Color(0xffA19F9F),fontSize:Height/35, fontWeight:FontWeight.normal),),
            ),
            SizedBox(height: Height/50,),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:
                    (context) =>  Employeepage()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color(0xffF14141)),
              ),
              child:  const Text('Try Again'),
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(left: Width/10),
                  child: Image(image: AssetImage('assets/images/page4(2).png'), width: Width/2.5, height: Height/4,),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: Width/25,),
                  child: Image(image: AssetImage('assets/images/page4(3).png')),
                ),
            ],)
          ],
        ),
      ),
    );
  }
}




