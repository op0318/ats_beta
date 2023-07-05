import 'package:ats_beta/Screens/BottomDrawer/personalDetails.dart';
import 'package:flutter/material.dart';

import '../Dashboard/Dashbordpunch.dart';


class BasicInfo extends StatefulWidget {
  const BasicInfo({Key? key}) : super(key: key);

  @override
  State<BasicInfo> createState() => _BasicInfoState();
}

class _BasicInfoState extends State<BasicInfo> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffd9d9d9),
      appBar: AppBar(
        backgroundColor:  const Color(0xff004466),
        leading: IconButton( onPressed: () {  Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const PersonalDetails())); },
          icon: Icon(Icons.arrow_back, size: heightSize/20, ),),
        actions: [
          IconButton( onPressed: () {
            // Navigator.pushReplacement(context,
            //   MaterialPageRoute(builder: (context) => ApplyLeave()));
          },
            icon: Icon(Icons.notifications_none, size: heightSize/20, ),),
        ],
        title: const Center(child: Text('Basic Information')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 1,
              child:profileinfo(context) ,
            ),
            Container(height: heightSize/90,
              width: widthSize,
              color: const Color(0xffd9d9d9),
            ),
            Container(
              height: heightSize/1.4,
              width: widthSize,
              color: const Color(0xffffffff),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: heightSize/40),
                    child: Card(
                      elevation: 4,
                      child: Container(
                        height: heightSize/12,
                        width: widthSize/1.1,
                        decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(widthSize/50),
                          color: const Color(0xff0D95DA) ,
                        ),

                        child: Center(
                          child: Text('Native Location : Chennai',
                             style:TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.normal, fontSize: widthSize/15) ,),
                        ),
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: heightSize/40),
                    child: Card(
                      elevation: 4,
                      child: Container(
                        height: heightSize/12,
                        width: widthSize/1.1,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(widthSize/50),
                          color: const Color(0xff0D95DA) ,
                        ),

                        child: Center(
                          child: Text('Father Name : Ramu',
                            style:TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.normal, fontSize: widthSize/15) ,),
                        ),
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: heightSize/40),
                    child: Card(
                      elevation: 4,
                      child: Container(
                        height: heightSize/12,
                        width: widthSize/1.1,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(widthSize/50),
                          color: const Color(0xff0D95DA) ,
                        ),

                        child: Center(
                          child: Text('Blood Group : O+ ',
                            style:TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.normal, fontSize: widthSize/15) ,),
                        ),
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: heightSize/40),
                    child: Card(
                      elevation: 4,
                      child: Container(
                        height: heightSize/12,
                        width: widthSize/1.1,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(widthSize/50),
                          color: const Color(0xff0D95DA) ,
                        ),

                        child: Center(
                          child: Text('Emergency : 1234567891',
                            style:TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.normal, fontSize: widthSize/15) ,),
                        ),
                      ),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
}
