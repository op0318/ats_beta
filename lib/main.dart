import 'package:ats_beta/Screens/Authentication/login.dart';
import 'package:ats_beta/Screens/Dashboard/Dashbordpunch.dart';
import 'package:ats_beta/firestoreservice/firestoreservice.dart';
import 'package:ats_beta/provider/productprovider.dart';
import 'package:ats_beta/sample/products.dart';
import 'package:ats_beta/splashscreens/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        child:  MaterialApp(
         // home: Leavepage(),
         //home: Products(),
          // home: HomeScreen(),
          home: Splshscreen(),
         // home: Employeepage(),
        //  home: punchin(),
        debugShowCheckedModeBanner: false,
     ),
    );
  }
}









