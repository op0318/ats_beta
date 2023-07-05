import 'package:ats_beta/Screens/Dashboard/Dashbordpunch.dart';
import 'package:flutter/material.dart';

class MyTickets extends StatefulWidget {
  const MyTickets({Key? key}) : super(key: key);

  @override
  State<MyTickets> createState() => _MyTicketsState();
}

class _MyTicketsState extends State<MyTickets> {
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
        title: const Center(child: Text('My Tickets')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: widthSize/25,top:heightSize/35 ),
              child: Container(
                height: heightSize/5.4,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/45, left: widthSize/45),
                          child: Text('Assigning by vinistan',
                            style: TextStyle(color: const Color(0xff898989) ,fontWeight:FontWeight.normal, fontSize: heightSize/40),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:widthSize/5, top: heightSize/45),
                          child: Text('wed ,18 Dec',
                            style: TextStyle(color: const Color(0xff898989) ,fontWeight:FontWeight.normal, fontSize: heightSize/40),),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: heightSize/50
                          ,right: widthSize/5),
                      child:  Text('Complete the Employee dashboard page',
                        style: TextStyle(color:const Color(0xff000000), fontSize: widthSize/27),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/40, ),
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
                              onPressed: (){}, child: const Text('Pending',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/8),
                          child: Text('Report Date',
                            style: TextStyle(color: const Color(0xff000000),
                                fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/25),
                          child: Text('Mon, 23 Dec',
                            style: TextStyle(color: const Color(0xff898989),
                                fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: widthSize/25,top:heightSize/35 ),
              child: Container(
                height: heightSize/5.4,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/45, left: widthSize/45),
                          child: Text('Assigning by vinistan',
                            style: TextStyle(color: const Color(0xff898989) ,fontWeight:FontWeight.normal, fontSize: heightSize/40),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:widthSize/5, top: heightSize/45),
                          child: Text('wed ,18 Dec',
                            style: TextStyle(color: const Color(0xff898989) ,fontWeight:FontWeight.normal, fontSize: heightSize/40),),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: heightSize/50
                          ,right: widthSize/5),
                      child:  Text('Complete the Employee dashboard page',
                        style: TextStyle(color:const Color(0xff000000), fontSize: widthSize/27),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/40, ),
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
                              onPressed: (){}, child: const Text('Completed',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/10),
                          child: Text('Report Date',
                            style: TextStyle(color: const Color(0xff000000),
                                fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/30),
                          child: Text('Mon, 23 Dec',
                            style: TextStyle(color: const Color(0xff898989),
                                fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: widthSize/25,top:heightSize/35 ),
              child: Container(
                height: heightSize/5.4,
                width: widthSize/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff004466)),
                  borderRadius: BorderRadius.circular(widthSize/50),
                  //color: const Color(0xffffffff),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: heightSize/45, left: widthSize/45),
                          child: Text('Assigning by vinistan',
                            style: TextStyle(color: const Color(0xff898989) ,fontWeight:FontWeight.normal, fontSize: heightSize/40),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:widthSize/5, top: heightSize/45),
                          child: Text('wed ,18 Dec',
                            style: TextStyle(color: const Color(0xff898989) ,fontWeight:FontWeight.normal, fontSize: heightSize/40),),
                        )
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: heightSize/50
                          ,right: widthSize/5),
                      child:  Text('Complete the Employee dashboard page',
                        style: TextStyle(color:const Color(0xff000000), fontSize: widthSize/27),),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/40, ),
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
                              onPressed: (){}, child: const Text('Pending',
                            style: TextStyle(color: Color(0xffffffff)),)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/8),
                          child: Text('Report Date',
                            style: TextStyle(color: const Color(0xff000000),
                                fontSize: heightSize/40, fontWeight: FontWeight.normal),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: widthSize/25),
                          child: Text('Mon, 23 Dec',
                            style: TextStyle(color: const Color(0xff898989),
                                fontSize: heightSize/40, fontWeight: FontWeight.normal),),
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
