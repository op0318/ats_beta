

import 'package:ats_beta/Screens/WelcomePages/Splashscreen.dart';
import 'package:ats_beta/Screens/Vaildcheck.dart';
import 'package:ats_beta/Screens/Authentication/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    //  home: statemanagement(),
      home: splashscreen(),
     // home:valid(),
    );
  }
}




// class statemanagement extends StatefulWidget {
//   const statemanagement({Key? key}) : super(key: key);
//
//   @override
//   State<statemanagement> createState() => _statemanagementState();
// }
//
// class _statemanagementState extends State<statemanagement> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//           body:Container( height: double.infinity,
//             width: double.infinity,
//             child: Center(
//               child: Column(
//                 children: [
//                   Text('ATS',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
//                   SizedBox(height: 50,),
//                   ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
//                       onPressed: (){
//                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Employeepage(),));
//                       }, child: Text('WElcome'))
//                 ],
//               ),
//             ),
//           )
//
//     ) ;}
// }


