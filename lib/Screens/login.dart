import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Employeepage extends StatefulWidget {
  const Employeepage({Key? key}) : super(key: key);

  @override
  State<Employeepage> createState() => _EmployeepageState();
}

class _EmployeepageState extends State<Employeepage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double  Height = MediaQuery.of(context).size.height;
    double  Width =   MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color:const Color(0xffffffff),
              height: Height,
              width: Width,

            ),
            Positioned(top: Height/20,
                child: IconButton(icon:const Icon(Icons.arrow_back, color: Color(0xff004466),size: 25,) , onPressed: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(
                  //     builder: (context) => const Otpcode()));
                },)),
            Positioned(top:  Height/20,
              right: Width/10,
              child:const Image(image: AssetImage('assets/images/Logo.png', ),) ,),
            Positioned(bottom: 0,
                child: Container(
                  height: Height/1.3,
                  width: Width,
                  decoration:   const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Color(0xff004466),
                  ),
                )
            ),

            Positioned(left: Width/2.7,
                top: Height/6.5,
                child: const Image(image: AssetImage('assets/images/atscircle.png'))
            ),
            Positioned(bottom: Height/1.6,
              left: Width/4.5,
              child:const Text('Your employee id', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            Positioned(bottom: Height/1.8,
              left: Width/4.5,
              child:const Text('please enter your employee id ', style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.normal),),
            ),
            Positioned(bottom: Height/2,
              left: Width/4.5,
              child:const  Text('and confirm', style: TextStyle(color: Colors.white,fontSize: 18),),
            ),
            Positioned(
              bottom: Height/2.6,
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
                  key: _formKey,
                  child: TextFormField(
                    // validator: (value) {
                    //   if (value!.isEmpty && value.length<=10 ) {
                    //     return 'Please Enter the mobile number';
                    //   }
                    //   else if (!RegExp('^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$') ){
                    //
                    //   }
                    //   },
                    inputFormatters: <TextInputFormatter>[
                      //FilteringTextInputFormatter.allow(RegExp(r'^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$')),
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
            Positioned(bottom:Height/6,
                left:Width/1.3 ,
                child: FloatingActionButton(onPressed: () {
                  // Navigator.pushReplacement(context, MaterialPageRoute(
                  //     builder: (context) => const punch()));
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