import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class punchdetails extends StatelessWidget {
  punchdetails ( {Key? key}) : super(key: key);

   DateTime Date = DateTime(1900,12, 30);
   DateTime?  selectedMonth ;

  final currentuser = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final CollectionReference users = FirebaseFirestore.instance.collection('Employee');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton( onPressed: () {  },
          icon: Icon(Icons.arrow_back,),),
        actions: const [
          Icon(Icons.notifications_none),
        ],
        title: const Center(child: Text('Apply Leave')),
      ),
       body: Column(
         children: [
           Row(
             children: [
               Image(image: AssetImage('assets/images/profile.jpg')),
               SizedBox(width: 70,),
               Column(
                 children: [

                   FutureBuilder<DocumentSnapshot>(
                     future: users.doc("0wmfoll07el0tLda8HUC").get(),
                     builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                       if (snapshot.hasError) {
                         return Text("Something went wrong");
                       }

                       if (snapshot.hasData && !snapshot.data!.exists) {
                         return Text("Document does not exist");
                       }

                       if (snapshot.connectionState == ConnectionState.done) {
                         Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
                         return Text("${data['Empid']}");
                       }

                       return Text("loading");
                     },
                   ),
                   FutureBuilder<DocumentSnapshot>(
                     future: users.doc("0wmfoll07el0tLda8HUC").get(),
                     builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                       // if (snapshot.hasError) {
                       //   return Text("Something went wrong");
                       // }
                       //
                       // if (snapshot.hasData && !snapshot.data!.exists) {
                       //   return Text("Document does not exist");
                       // }

                       if (snapshot.connectionState == ConnectionState.done) {
                         Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
                         return Text("${data['name']}");
                       }

                       return Text("loading");
                     },
                   ),
                 ],
               ),

             ],
           ),
           const SizedBox(height: 40,),
           Row(
             children: const [
               SizedBox(width:60,),
               Text('Select Date'),
               SizedBox(width:80,),
               Text('Select Month'),
             ],
           ),
           Row(
             children: [
               SizedBox(width:40,),
               IconButton(onPressed: () {  },
               icon:  Image(image: AssetImage('assets/images/calender.png'),)),
               SizedBox(width:40,),
               Image(image: AssetImage('assets/images/calender.png')),
             ],
           ),
           Padding(
             padding: const EdgeInsets.all(20),
             child: Container(
               height: 200,
               width: 400,
               color: Colors.blue,
             ),
           )
         ],
       ),
    );
  }
}
