import 'package:ats_beta/Screens/Dashboard/Dashbordpunch.dart';
import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  const Color(0xff004466),
          leading: IconButton( onPressed: () {  Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const punchin())); },
            icon: Icon(Icons.arrow_back, size: heightSize/20, ),),
          actions: [
            IconButton( onPressed: () {
              // Navigator.pushReplacement(context,
              //   MaterialPageRoute(builder: (context) => ApplyLeave()));
            },
              icon: Icon(Icons.notifications_none, size: heightSize/20, ),),
          ],
          title: const Center(child: Text('Notifications')),
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: heightSize/40, left: widthSize/25),
              child: Container(
                height: heightSize/5.5,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                  Padding(
                    padding: EdgeInsets.only(right: widthSize/1.4,top: heightSize/70),
                    child: Text('Half Day', style: TextStyle(color: const Color(0xff898989),
                      fontSize: heightSize/40,fontWeight: FontWeight.normal),),
                  ),
                    Row(
                      children: [
                        Text('Wed ,18 Dec', style: TextStyle(color: const Color(0xff000000),
                            fontSize: heightSize/25,fontWeight: FontWeight.bold),),
                        SizedBox(width: widthSize/7,),
                        Container(
                            height: heightSize/15,
                            width: widthSize/2.8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(widthSize/2,)
                            ),
                          child: ElevatedButton(
                              style:  ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xff69CC50)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(heightSize/25),
                                        //  side: const BorderSide(color: Color(0xff69CC50))
                                      )
                                  )
                              ),
                              onPressed: (){}, child: const Text('Approved',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),

                      ],
                    ),
                    Row(children:  [
                      Padding(
                        padding: EdgeInsets.only(bottom: heightSize/60),
                        child: Text('Sick Leave', style: TextStyle(color: const Color(0xffF47260),
                            fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: widthSize/1.8, top: heightSize/70),
                        child: SizedBox(
                          height: heightSize/20,
                          width: widthSize/12,

                          child: DecoratedBox(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(heightSize/95),
                                color: const Color(0xff004466)),
                            child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/35, color: const Color(0xffffffff),),
                          ),
                        ),
                      )
                    ],),

                  ],
                ),
              ),
            ),
            SizedBox(height: heightSize/60,),
            Padding(
              padding: EdgeInsets.only(top: heightSize/40, left: widthSize/25),
              child: Container(
                height: heightSize/5.5,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: widthSize/1.4,top: heightSize/70),
                      child: Text('Full Day', style: TextStyle(color: const Color(0xff898989),
                          fontSize: heightSize/40,fontWeight: FontWeight.normal),),
                    ),
                    Row(
                      children: [
                        Text('Thus ,22 Dec', style: TextStyle(color: const Color(0xff000000),
                            fontSize: heightSize/25,fontWeight: FontWeight.bold),),
                        SizedBox(width: widthSize/8,),
                        Container(
                          height: heightSize/15,
                          width: widthSize/2.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(widthSize/2,)
                          ),
                          child: ElevatedButton(
                              style:  ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffE7AD17)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(heightSize/25),
                                        //  side: const BorderSide(color: Color(0xff69CC50))
                                      )
                                  )
                              ),
                              onPressed: (){}, child: const Text('Pending',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),

                      ],
                    ),
                    Row(children:  [
                      Padding(
                        padding: EdgeInsets.only(bottom: heightSize/60),
                        child: Text('Medical Leave', style: TextStyle(color: const Color(0xff62B078),
                            fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: widthSize/2.1, top: heightSize/70),
                        child: SizedBox(
                          height: heightSize/20,
                          width: widthSize/12,

                          child: DecoratedBox(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(heightSize/90),
                                color: const Color(0xff004466)),
                            child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/35, color: const Color(0xffffffff),),
                          ),
                        ),
                      )
                    ],),

                  ],
                ),
              ),
            ),
            SizedBox(height: heightSize/60,),
            Padding(
              padding: EdgeInsets.only(top: heightSize/40, left: widthSize/25),
              child: Container(
                height: heightSize/5.5,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: widthSize/1.4,top: heightSize/70),
                      child: Text('Full Day', style: TextStyle(color: const Color(0xff898989),
                          fontSize: heightSize/40,fontWeight: FontWeight.normal),),
                    ),
                    Row(
                      children: [
                        Text('Fri ,20 Dec', style: TextStyle(color: const Color(0xff000000),
                            fontSize: heightSize/25,fontWeight: FontWeight.bold),),
                        SizedBox(width: widthSize/5,),
                        Container(
                          height: heightSize/15,
                          width: widthSize/2.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(widthSize/2,)
                          ),
                          child: ElevatedButton(
                              style:  ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffDE574F)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(heightSize/25),
                                        //  side: const BorderSide(color: Color(0xff69CC50))
                                      )
                                  )
                              ),
                              onPressed: (){}, child: const Text('Declined',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),

                      ],
                    ),
                    Row(children:  [
                      Padding(
                        padding: EdgeInsets.only(bottom: heightSize/60),
                        child: Text('Casual Leave', style: TextStyle(color: const Color(0xff57A2E8),
                            fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: widthSize/2, top: heightSize/70),
                        child: SizedBox(
                          height: heightSize/20,
                          width: widthSize/12,

                          child: DecoratedBox(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(heightSize/90),
                                color: const Color(0xff004466)),
                            child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/35, color: const Color(0xffffffff),),
                          ),
                        ),
                      )
                    ],),

                  ],
                ),
              ),
            ),
            SizedBox(height: heightSize/60,),
            Padding(
              padding: EdgeInsets.only(top: heightSize/40, left: widthSize/25),
              child: Container(
                height: heightSize/5.5,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: widthSize/1.4,top: heightSize/70),
                      child: Text('Full Day', style: TextStyle(color: const Color(0xff898989),
                          fontSize: heightSize/40,fontWeight: FontWeight.normal),),
                    ),
                    Row(
                      children: [
                        Text('Fri ,20 Dec', style: TextStyle(color: const Color(0xff000000),
                            fontSize: heightSize/25,fontWeight: FontWeight.bold),),
                        SizedBox(width: widthSize/5,),
                        Container(
                          height: heightSize/15,
                          width: widthSize/2.8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(widthSize/2,)
                          ),
                          child: ElevatedButton(
                              style:  ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xffDE574F)),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(heightSize/25),
                                        //  side: const BorderSide(color: Color(0xff69CC50))
                                      )
                                  )
                              ),
                              onPressed: (){}, child: const Text('Declined',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),

                      ],
                    ),
                    Row(children:  [
                      Padding(
                        padding: EdgeInsets.only(bottom: heightSize/60),
                        child: Text('Casual  Leave', style: TextStyle(color: const Color(0xff57A2E8),
                            fontSize: heightSize/35,fontWeight: FontWeight.normal),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: widthSize/2, top: heightSize/70),
                        child: SizedBox(
                          height: heightSize/20,
                          width: widthSize/12,

                          child: DecoratedBox(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(heightSize/90),
                                color: const Color(0xff004466)),
                            child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/35, color: const Color(0xffffffff),),
                          ),
                        ),
                      )
                    ],),

                  ],
                ),
              ),
            ),
            SizedBox(height: heightSize/2,),
          ],
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
}
