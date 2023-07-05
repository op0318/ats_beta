import 'package:ats_beta/Screens/BottomDrawer/personalDetails.dart';
import 'package:ats_beta/Screens/Dashboard/Dashbordpunch.dart';
import 'package:flutter/material.dart';

class myteams extends StatefulWidget {
  const myteams({Key? key}) : super(key: key);

  @override
  State<myteams> createState() => _myteamsState();
}

class _myteamsState extends State<myteams> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
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
        title: const Center(child: Text('My Teams')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
               padding: EdgeInsets.only(top: heightSize/25, left: widthSize/15),
               child: Container(
                 height: heightSize/4,
                 width: widthSize/1.15,
                 decoration: BoxDecoration(
                     border: Border.all(color: const Color(0xff004466), width: widthSize/100),
                     borderRadius: BorderRadius.circular(widthSize/25),
                     //color: const Color(0xffffffff),
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding:EdgeInsets.only(left: widthSize/20),
                       child: const Image(image: AssetImage('assets/images/profile.jpg')),
                     ),
                     Column(
                       children: [
                         Padding(
                           padding: EdgeInsets.only(top: heightSize/20, right: widthSize/35),
                           child: Text('Rocky', style: TextStyle(color: const Color(0xff004466),
                               fontSize: heightSize/30,fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: heightSize/50, left: widthSize/8),
                           child: Text('Team Member', style: TextStyle(color: Color(0xff004466),
                               fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                         ),
                         Padding(
                           padding: EdgeInsets.only(top: heightSize/40, left: widthSize/20),
                           child: Container(
                             height: heightSize/30,
                               width: widthSize/3.95,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(heightSize/70,)
                               ),
                               child: ElevatedButton(
                                 style: ElevatedButton.styleFrom(
                                   primary: const Color(0xff004466)
                                 ),
                                   onPressed: (){}, child: const Text('see more',
                                 style: TextStyle(color: Color(0xffffffff)),))),
                         ),

                       ],
                     )

                   ],
                 ),
               ),
             ),

             Padding(
              padding: EdgeInsets.only(top: heightSize/25, left: widthSize/15),
              child: Container(
                height: heightSize/4,
                width: widthSize/1.15,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466), width: widthSize/100),
                  borderRadius: BorderRadius.circular(widthSize/25),
                  //color: const Color(0xffffffff),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left: widthSize/20),
                      child: Image(image: AssetImage('assets/images/profile.jpg')),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/20, right: widthSize/35),
                          child: Text('Rocky', style: TextStyle(color: const Color(0xff004466),
                              fontSize: heightSize/30,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/50, left: widthSize/8),
                          child: Text('Team Member', style: TextStyle(color: Color(0xff004466),
                              fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/40, left: widthSize/20),
                          child: Container(
                              height: heightSize/30,
                              width: widthSize/3.95,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(heightSize/70,)
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff004466)
                                  ),
                                  onPressed: (){}, child: const Text('see more',
                                style: TextStyle(color: Color(0xffffffff)),))),
                        ),

                      ],
                    )

                  ],
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: heightSize/25, left: widthSize/15),
              child: Container(
                height: heightSize/4,
                width: widthSize/1.15,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466), width: widthSize/100),
                  borderRadius: BorderRadius.circular(widthSize/25),
                  //color: const Color(0xffffffff),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:EdgeInsets.only(left: widthSize/20),
                      child: const Image(image: AssetImage('assets/images/profile.jpg')),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/20, right: widthSize/35),
                          child: Text('Rocky', style: TextStyle(color: const Color(0xff004466),
                              fontSize: heightSize/30,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/50, left: widthSize/8),
                          child: Text('Team Member', style: TextStyle(color: Color(0xff004466),
                              fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/40, left: widthSize/20),
                          child: Container(
                              height: heightSize/30,
                              width: widthSize/3.95,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(heightSize/70,)
                              ),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff004466)
                                  ),
                                  onPressed: (){}, child: const Text('see more',
                                style: TextStyle(color: Color(0xffffffff)),))),
                        ),

                      ],
                    )

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
}
