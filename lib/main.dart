import 'package:ats_beta/Screens/Selectlocation.dart';
import 'package:ats_beta/firestoreservice/firestoreservice.dart';
import 'package:ats_beta/models/Employeemodel.dart';
import 'package:ats_beta/provider/productprovider.dart';
import 'package:ats_beta/sample/products.dart';
import 'package:ats_beta/splashscreens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Functions/Storelocation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firestoreservice = Firestoreservice();
    return  MultiProvider(
      providers:[
      ChangeNotifierProvider(create: (context) => ProductProvider(),),
      StreamProvider(create: (context)=> firestoreservice.getProducts(), initialData: [Products()],)
    ],
        child:   const MaterialApp(
        home: Authcheck(),
       // home: Storelocation(),
        debugShowCheckedModeBanner: false,
     ),
    );
  }
}


class Authcheck extends StatefulWidget {
  const Authcheck({Key? key}) : super(key: key);

  @override
  State<Authcheck> createState() => _AuthcheckState();
}

class _AuthcheckState extends State<Authcheck> {
   bool userAvailable  =false;
   late SharedPreferences sharedPreferences;
   @override
   void initState(){
     super.initState();
     getusercheck();
   }

   void getusercheck() async{
     sharedPreferences  =await SharedPreferences.getInstance();
     try{
       if(sharedPreferences.getString("EmployeeId")!= null){
         setState(() {
           Employees.Empid= sharedPreferences.getString('Empid')!;
         //  Employees.Name= sharedPreferences.getString('Name')!;
           userAvailable = true;
         });
       }
     }catch(e){
       setState(() {
         userAvailable = false;
       });
     }
   }
  @override
  Widget build(BuildContext context) {
    return userAvailable ? const SelectMapping() : const Splshscreen();
  }
}







