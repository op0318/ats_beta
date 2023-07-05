
import 'package:ats_beta/Screens/BottomDrawer/ApplyLeave.dart';
import 'package:ats_beta/Screens/Dashboard/Dashbordpunch.dart';
import 'package:flutter/material.dart';

class LeaveRequest extends StatefulWidget {
  const LeaveRequest({Key? key}) : super(key: key);

  @override
  State<LeaveRequest> createState() => _LeaveRequestState();
}

class _LeaveRequestState extends State<LeaveRequest> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color(0xff004466),
        leading: IconButton( onPressed: () {  Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const ApplyLeave())); },
          icon: Icon(Icons.arrow_back, size: heightSize/20, ),),
        actions: [
          IconButton( onPressed: () {
            // Navigator.pushReplacement(context,
            //   MaterialPageRoute(builder: (context) => ApplyLeave()));
          },
            icon: Icon(Icons.notifications_none, size: heightSize/20, ),),
        ],
        title: const Center(child: Text('Leave Request')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: heightSize/30, top: widthSize/15),
              child: Container(
                height: heightSize/4,
                width: widthSize/1.1,
                color: const Color(0xffEAF4F9),
                  child:Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: widthSize/1.7, ),
                        child: SizedBox(
                          height: heightSize/20,
                          width: widthSize/3,
                          child: ElevatedButton(
                              style:  ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff69CC50)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(heightSize/50),
                                        //  side: const BorderSide(color: Color(0xff69CC50))
                                      )
                                  )
                              ),
                              onPressed: (){}, child:  Text('Approved',
                            style: TextStyle(color: const Color(0xffffffff), fontSize: heightSize/32),)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: heightSize/40, right: widthSize/2.5),
                        child: Text('Suffering from Fever',
                          style: TextStyle(color: const Color(0xff000000), fontSize: heightSize/32),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: widthSize/1.5),
                        child: Text('Sick Leave',
                          style: TextStyle(color: const Color(0xff898989), fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: widthSize/25),
                            child: Image(image: const AssetImage('assets/images/leavepageicon.png',),
                              height: heightSize/15,width: widthSize/20, ),
                          ), 
                          Text('Leave from:',
                            style: TextStyle(color: const Color(0xff898989), fontWeight: FontWeight.normal, fontSize: heightSize/35),),
                          SizedBox(width: widthSize/40,),
                          Text('18 th Dec',
                              style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.normal, fontSize: heightSize/32)),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: widthSize/25),
                            child: const Image(image: AssetImage('assets/images/leavepageicon2.png',),
                            ),
                          ),
                          Text('Human Resource :',
                              style: TextStyle(color: const Color(0xff898989), fontWeight: FontWeight.normal, fontSize: heightSize/35)),
                          Text('Kumar singh',
                              style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.normal, fontSize: heightSize/32)),

                        ],
                      ),
                    ],
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: heightSize/30, top: widthSize/15),
              child: Container(
                height: heightSize/4,
                width: widthSize/1.1,
                color: const Color(0xffEAF4F9),
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: widthSize/1.7, ),
                      child: SizedBox(
                        height: heightSize/20,
                        width: widthSize/3,
                        child: ElevatedButton(
                            style:  ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffE7AD17)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(heightSize/50),
                                      //  side: const BorderSide(color: Color(0xff69CC50))
                                    )
                                )
                            ),
                            onPressed: (){}, child:Text('Pending',
                          style: TextStyle(color: const Color(0xffffffff), fontSize: heightSize/32),)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: heightSize/40, right: widthSize/2.5),
                      child: Text('Suffering from Fever',
                        style: TextStyle(color: const Color(0xff000000), fontSize: heightSize/32),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: widthSize/1.8),
                      child: Text('Medical Leave',
                        style: TextStyle(color: const Color(0xff898989), fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: widthSize/25),
                          child: Image(image: const AssetImage('assets/images/leavepageicon.png',),
                            height: heightSize/15,width: widthSize/20, ),
                        ),
                        Text('Leave from:',
                          style: TextStyle(color: const Color(0xff898989), fontWeight: FontWeight.normal, fontSize: heightSize/35),),
                        SizedBox(width: widthSize/40,),
                        Text('18 th Dec',
                            style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.normal, fontSize: heightSize/32)),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/25),
                          child: const Image(image: AssetImage('assets/images/leavepageicon2.png',),
                          ),
                        ),
                        Text('Human Resource :',
                            style: TextStyle(color: const Color(0xff898989), fontWeight: FontWeight.normal, fontSize: heightSize/35)),
                        Text('Kumar singh',
                            style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.normal, fontSize: heightSize/32)),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: heightSize/30, top: widthSize/15),
              child: Container(
                height: heightSize/4,
                width: widthSize/1.1,
                color: const Color(0xffEAF4F9),
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: widthSize/1.7, ),
                      child: SizedBox(
                        height: heightSize/20,
                        width: widthSize/3,
                        child: ElevatedButton(
                            style:  ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffDE574F)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(heightSize/50),
                                      //  side: const BorderSide(color: Color(0xff69CC50))
                                    )
                                )
                            ),
                            onPressed: (){}, child: Text('Declined',
                          style: TextStyle(color: const Color(0xffffffff), fontSize: heightSize/32),)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: heightSize/40, right: widthSize/2.5),
                      child: Text('Suffering from Fever',
                        style: TextStyle(color: const Color(0xff000000), fontSize: heightSize/32),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: widthSize/1.9),
                      child: Text('Casual Leave',
                        style: TextStyle(color: const Color(0xff898989), fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: widthSize/25),
                          child: Image(image: const AssetImage('assets/images/leavepageicon.png',),
                            height: heightSize/15,width: widthSize/20, ),
                        ),
                        Text('Leave from:',
                          style: TextStyle(color: const Color(0xff898989), fontWeight: FontWeight.normal, fontSize: heightSize/35),),
                        SizedBox(width: widthSize/40,),
                        Text('18 th Dec',
                            style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.normal, fontSize: heightSize/32)),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/25),
                          child: const Image(image: AssetImage('assets/images/leavepageicon2.png',),
                          ),
                        ),
                        Text('Human Resource :',
                            style: TextStyle(color: Color(0xff898989), fontWeight: FontWeight.normal, fontSize: heightSize/35)),
                        Text('Kumar singh',
                            style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.normal, fontSize: heightSize/32)),

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: heightSize/2,)

          ],
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
    
  }
}
