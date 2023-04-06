
import 'package:ats_beta/firestoreservice/firestoreservice.dart';
import 'package:ats_beta/provider/productprovider.dart';
import 'package:ats_beta/sample/products.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:ats_beta/test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firestoreservice = Firestoreservice();
    return  MultiProvider(
      providers:[
      ChangeNotifierProvider(create: (context) => ProductProvider(),),
      StreamProvider(create: (context)=> firestoreservice.getProducts(), initialData: [],)
    ],
      child:  MaterialApp(
     // home: testsss(),
      home: Products(),
      debugShowCheckedModeBanner: true,
     // home:valid(),
     ),
    );
  }
}

//THis is a check






