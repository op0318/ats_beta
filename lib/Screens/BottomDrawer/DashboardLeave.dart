import 'package:ats_beta/Screens/Dashboard/Dashbordpunch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked_chart/stacked_chart.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

import 'ApplyLeave.dart';

class punchdetails extends StatelessWidget {
  punchdetails ( {Key? key}) : super(key: key);

   DateTime Date = DateTime(1900,12, 30);
   DateTime?  selectedMonth ;

  final currentuser = FirebaseAuth.instance;

  // final List<ChartData> chartData = [
  //   const ChartData(labelWithValue: {}, barLabel: ''),
  //   const ChartData(labelWithValue: {}, barLabel: ''),
  //   const ChartData(labelWithValue: {}, barLabel: ''),
  //   const ChartData(labelWithValue: {}, barLabel: ''),
  //   const ChartData(labelWithValue: {}, barLabel: '')
  // ];

  @override
  Widget build(BuildContext context) {


    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    final CollectionReference users = FirebaseFirestore.instance.collection('Employee');
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Color(0xff004466),
        leading: IconButton( onPressed: () {  Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ApplyLeave())); },
          icon: Icon(Icons.arrow_back, size: heightSize/20, ),),
        actions: [
          IconButton( onPressed: () {
            // Navigator.pushReplacement(context,
            //   MaterialPageRoute(builder: (context) => ApplyLeave()));
            },
            icon: Icon(Icons.notifications_none, size: heightSize/20, ),),
        ],
        title: const Center(child: Text(' Punch Details')),
      ),  
       body: SingleChildScrollView(
         child: Column(
           children: [
             Padding(
               padding: EdgeInsets.only(top: heightSize/40, left: widthSize/25),
               child: Row(
                 children: [
                   const Image(image: AssetImage('assets/images/profile.jpg')),
                   SizedBox(width:widthSize/2.5),
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
                             return Text("${data['name']}",
                               style:  TextStyle(fontSize: widthSize/15, color: Color(0xff000000),
                                   fontWeight: FontWeight.bold),);
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
                             return Text("${data['Empid']}", style:  TextStyle(fontSize: widthSize/20, color: Color(0xff080808), fontWeight: FontWeight.normal),);
                           }

                           return const Text("loading");
                         },
                       ),
                     ],
                   ),

                 ],
               ),
             ),
             SizedBox(height:heightSize/40),
             Row(
               mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
               children: [
                 DecoratedBox(
                 decoration: const BoxDecoration(color: Color(0xff004466)),
                 child: Text('Select Date', style:  TextStyle(fontSize: heightSize/35, color: Color(0xffffffff),
                     fontWeight: FontWeight.bold)),
              ),
                 DecoratedBox(
                   decoration: const BoxDecoration(color: Color(0xff004466)),
                   child: Text('Select Month', style:  TextStyle(fontSize: heightSize/35, color: const Color(0xffffffff),
                       fontWeight: FontWeight.bold)),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
               children: [
                 InkWell(
                   onTap: () {}, // Image tapped
                   splashColor: Colors.white10, // Splash color over image
                   child: Ink.image(
                     // fit: BoxFit.cover, // Fixes border issues
                     width: widthSize/3,
                     height: heightSize/5,
                     image: const AssetImage(
                       'assets/images/calender.png',
                     ),
                   ),
                 ),
                 InkWell(
                   onTap: () {}, // Image tapped
                   splashColor: Colors.white10, // Splash color over image
                   child: Ink.image(
                    // fit: BoxFit.cover, // Fixes border issues
                     width: widthSize/3,
                     height: heightSize/5,
                     image: const AssetImage(
                       'assets/images/calender.png',
                     ),
                   ),
                 )
               ],
             ),
             Padding(
               padding: const EdgeInsets.all(20),
               child: Container(
                 height: heightSize/3,
                 width: widthSize/1.15,
                 decoration: BoxDecoration(
                   borderRadius:  BorderRadius.circular(heightSize/50),
                   color: Color(0xff004466),
                 ),

                   // child: Container(
                   //     child: SfCartesianChart(
                   //         series: <ChartSeries>[
                   //           BarSeries<ChartData, double>(
                   //               dataSource: chartData,
                   //               xValueMapper: (ChartData data, _) => data.x,
                   //               yValueMapper: (ChartData data, _) => data.y,
                   //               borderRadius: BorderRadius.all(Radius.circular(15))
                   //           )
                   //         ]
                   //     )
                   // )
               ),
               
             ),
             SizedBox(height:  heightSize/15,)
           ],
         ),
       ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
}
