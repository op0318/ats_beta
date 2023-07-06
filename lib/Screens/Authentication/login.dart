import 'package:fluttertoast/fluttertoast.dart';
import 'package:ats_beta/Screens/Selectlocation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/Employeemodel.dart';
import '../Dashboard/Dashbordpunch.dart';
import 'Vaildcheck.dart';



class Employeepage extends StatefulWidget {
   Employeepage({Key? key}) : super(key: key);


   @override
   State<Employeepage> createState() => _EmployeepageState();
}

class _EmployeepageState extends State<Employeepage> {
   TextEditingController empcontroller=TextEditingController();
   final formKey = GlobalKey<FormState>();
   late SharedPreferences  sharedPreferences;

   // Employees LoggedinUser = Employees(Empid:Empid);
   // final FirebaseAuth _auth = FirebaseAuth.instance;
   // String? userId = FirebaseAuth.instance.currentUser?.uid;
   // getData(String s) async{
   //
   //   return FirebaseFirestore.instance.collection('Employee').doc(userId).get().then((value) {
   //     Fluttertoast.showToast(msg: 'Login Successfully');
   //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SelectMapping(userId:userId) ))
   //         .catchError((e) {
   //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const Valid() ));
   //       Fluttertoast.showToast(msg: e);
   //     });
   //   });
   // }



   List database=[{'empid':['10801', '10802', '10803', '10804', '10805', '10806', '10807', '10809', '10901']},
     {'name':['thiru','devi','vini','suba','Aravind','venkatesh','aji','aji','sadhu','reha']}];



  @override
    Widget  build(BuildContext context)  {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
   //  void checkdb() {
   //    for(int i = 0; i < (database[0]['empid'] as List<String>).length; i++)
   //    {
   //      if ((database[0]['empid'] as List<String>)[i] == empcontroller.text.toString()) {
   //        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const SelectMapping()));
   //        return;
   //      }
   //      else
   //      {
   //
   //      }
   //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (con)=>const Valid()));
   //    }
   //  }
   //
   // final currentUser = FirebaseAuth.instance;
   //  void getUsers() {
   //    CollectionReference Employees = FirebaseFirestore.instance.collection('Employee').doc('0wmfoll07el0tLda8HUC').get() as CollectionReference<Object?>;
   //    // Validate data
   //    Map<String, dynamic> userData = Employees.id as Map<String, dynamic>;
   //      Navigator.push(context, MaterialPageRoute(builder: (context) => SelectMapping()));
   //    Employees.get().then((QuerySnapshot querySnapshot) => {
   //      querySnapshot.docs.forEach((doc) {
   //        print(doc.data());
   //      })
   //    });
   //  }
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
                height: Height/15,
                width: Width/1.7,
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
                  key: formKey,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Employee id';
                      }
                      return null;
                    },
                  ),
                ),
              ),),
            Positioned(bottom:Height/7,
                left:Width/1.3 ,
                child: FloatingActionButton(onPressed: () async{
                  // try {
                  //   DocumentSnapshot docSnapshot = await FirebaseFirestore
                  //       .instance.collection('Employee').doc(user).get();
                  //   if (docSnapshot.exists && docSnapshot.data() != null) {
                  //     // Retrieve the data from the document
                  //     Map<String, dynamic>? data = docSnapshot.data() as Map<String, dynamic>?;
                  //     // Perform a null check on the field you want to access
                  //     if (data != null && data.containsKey('Empid')) {
                  //       data = empcontroller.text.toString() as Map<String, dynamic>?;
                  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SelectMapping()));
                  //       // Access the field value
                  //       // Do something with the fieldValue
                  //       print(data);
                  //     }
                  //   }
                  //   //check();
                  // }
                  // catch(e){
                  //   print(e);
                  // }
                 // getData(userId =empcontroller.text );
                  //Focus.of(context).unfocus();
                  String Empid = empcontroller.text;

                  if(Empid.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content:Text("Employee id Still Empty") ));
                  }
                  else{
                    QuerySnapshot snap = await FirebaseFirestore.instance.
                    collection("EmployeeData").where("Empid" ,isEqualTo:Empid).get() ;
                   // print(snap.docs[0]["Empid"]);
                    try{
                      if(Empid == snap.docs[0]["Empid"]){
                        sharedPreferences = await SharedPreferences.getInstance();
                        sharedPreferences.setString("EmployeeId", Empid).
                        then((_) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const SelectMapping()));
                        });

                      }
                      else {
                        ScaffoldMessenger.of(context).showSnackBar( const SnackBar(
                            content:Text("Wrong Empid") ));
                      }
                    }catch(e){
                      String error = "";
                     // print(e.toString());
                      if(e.toString()=="RangeError (index): Invalid value: Valid value range is empty: 0"){
                        setState(() {
                          error = "Employee id Does not Exists";
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (con)=>const Valid()));
                        });
                      }else{
                        setState(() {
                          error = "error occurred";
                        });
                      }
                      ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                          content:Text(error) ));

                    }

                  }
                },
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.arrow_forward, color: Color(0xff004466),), )
            )
       ]
      ),
      )
    );
  }
   

}


