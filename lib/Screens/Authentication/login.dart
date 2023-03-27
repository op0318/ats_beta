import 'package:ats_beta/Screens/Selectlocation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'Vaildcheck.dart';


class Employeepage extends StatelessWidget {
   Employeepage({Key? key}) : super(key: key);


   final empcontroller=TextEditingController();
   List database=[
     {'empid':['10801', '10802', '10803', '10804', '10805', '10806', '10807', '10809', '10901']},
     {'name':['thiru','devi','vini','suba','Aravi','venkat','aji','aji','sadhu','reha']}];



  @override
  Widget build(BuildContext context) {
    double  Height = MediaQuery.of(context).size.height;
    double  Width =   MediaQuery.of(context).size.width;

    void checkdb()
    {
      for(int i = 0; i < (database[0]['empid'] as List<String>).length; i++)
      {
        if ((database[0]['empid'] as List<String>)[i] == empcontroller.text.toString()) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SelectMapping()));
          return;
        }
        else
        {

        }
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (con)=>valid()));
      }
    }
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color:const Color(0xffffffff),
              height: Height,
              width: Width,
            ),
            Positioned(top:  Height/20,
              right: Width/10,left:Width/15 ,
              child:const Image(image: AssetImage('assets/images/Logo.png',),
              ) ,
            ),
            Positioned(bottom: 0,
                child: Container(
                  height: Height/1.3,
                  width: Width,
                  decoration:   const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                      gradient: LinearGradient(
                          stops: [0.1, 1],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff0185c8),
                            Color(0xff004466),
                          ])
                  ),
                )
            ),
            Positioned(left: Width/2.8,
                top: Height/6.5,
                child: const Image(image: AssetImage('assets/images/atscircle.png'))
            ),
            Positioned(bottom: Height/1.7,
              left: Width/4.6,
              child:const Text('Your employee id', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Positioned(bottom: Height/1.9,
              left: Width/4.5,
              child:const Text('please enter your employee id ', style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            Positioned(bottom: Height/2.1,
              left: Width/4.5,
              child:const  Text('and confirm', style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
            Positioned(
              bottom: Height/2.8,
              left:  Width/4.5,
              child: Container(
                height: Height / 15,
                width: Width / 1.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff031547),
                          blurRadius: 8.0,
                          offset: Offset(0.0, 0.1)
                        //spreadRadius: 4.0,
                      )
                    ]
                ),
                child: Form(
                  child: TextFormField(
                    controller: empcontroller,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                    ],
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      // hintText: 'Employee id',
                      focusColor: Colors.blueGrey,
                      // border: OutlineInputBorder()
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),),
            Positioned(bottom:Height/7,
                left:Width/1.3 ,
                child: FloatingActionButton(onPressed: () {
                 checkdb();
                // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => statemanagement(),));
                },
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.arrow_forward, color: Color(0xff004466),), ))
          ],
        ),
      ),
    );
  }
}