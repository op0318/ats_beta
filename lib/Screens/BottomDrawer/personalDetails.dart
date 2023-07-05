import 'package:flutter/material.dart';

import '../Dashboard/Dashbordpunch.dart';
import 'Basicinfo.dart';


class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffd9d9d9),
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
        title: const Center(child: Text(' Personal Details')),
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Card(
              elevation: 1,
              child:profileinfo(context) ,
            ),
            Container(height: heightSize/90,
            width: widthSize,
            color: const Color(0xffd9d9d9),
            ),
            Card(
              elevation: 1,
              child: Container(
                height: heightSize/1.4,
                width: widthSize,
                color: const Color(0xffffffff),
                child: Column(
                  children: [
                       Container(height: heightSize/10,
                        width: widthSize, color: const Color(0xffffffff),
                        child:Padding(
                        padding: EdgeInsets.only(top: heightSize/40),
                        child: Row(
                          children: [
                             Column(

                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: widthSize/10),
                                    child: Text("Basic Information", style:  TextStyle(fontSize: widthSize/20,
                                        color: const Color(0xff000000), fontWeight: FontWeight.normal),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: widthSize/15),
                                    child: Text("See your Information here", style:  TextStyle(fontSize: widthSize/20,
                                        color: const Color(0xff808080), fontWeight: FontWeight.normal),),
                                  ),
                                ]
                            ),
                             Padding(
                               padding: EdgeInsets.only(left: widthSize/6),
                               child: SizedBox(
                                 height: heightSize/18,
                                 width:widthSize/10,
                                 child: DecoratedBox(

                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(heightSize/90),
                                      color: const Color(0xff004466)),
                                  child: IconButton(onPressed: () {
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BasicInfo()));
                                  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/30, color: const Color(0xffffffff),),
                            ),
                               ),
                             ),
                          ],
                        ),
                      ) ,
                    ),
                       const Divider(
                      color: Color(0xffD9D9D9), //color of divider
                      height: 5, //height spacing of divider
                      thickness: 3, //thickness of divier line
                      indent: 25, //spacing at the start of divider
                      endIndent: 25, //spacing at the end of divider
                    ),
                       Container(
                          height: heightSize/10, width: widthSize,
                          color: const Color(0xffffffff),
                         child:Padding(
                              padding: EdgeInsets.only(top: heightSize/40),
                        child: Row(
                          children: [
                            Column(

                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: widthSize/45),
                                    child: Text("Education Details", style:  TextStyle(fontSize: widthSize/21,
                                        color: const Color(0xff000000), fontWeight: FontWeight.normal),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: widthSize/15),
                                    child: Text("See your details here", style:  TextStyle(fontSize: widthSize/20,
                                        color: const Color(0xff808080), fontWeight: FontWeight.normal),),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only( left: widthSize/3.5),
                              child: SizedBox(
                                height: heightSize/18,
                                width:widthSize/10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(heightSize/90),
                                      color: const Color(0xff004466)),
                                  child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/30, color: const Color(0xffffffff),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                      const Divider(
                      color: Color(0xffD9D9D9), //color of divider
                      height: 5, //height spacing of divider
                      thickness: 3, //thickness of divier line
                      indent: 25, //spacing at the start of divider
                      endIndent: 25, //spacing at the end of divider
                    ),
                      Container(
                      height: heightSize/10,
                      width: widthSize,
                      color: const Color(0xffffffff),
                      child:Padding(
                        padding: EdgeInsets.only(top: heightSize/40),
                        child: Row(
                          children: [
                            Column(

                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: widthSize/15),
                                    child: Text("Past Experience Details", style:  TextStyle(fontSize: widthSize/21,
                                        color: const Color(0xff000000), fontWeight: FontWeight.normal),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: widthSize/30),
                                    child: Text("See your details here", style:  TextStyle(fontSize: widthSize/20,
                                        color: const Color(0xff808080), fontWeight: FontWeight.normal),),
                                  ),
                                ]
                            ),
                            Padding(
                              padding: EdgeInsets.only( left: widthSize/4),
                              child: SizedBox(
                                height: heightSize/18,
                                width:widthSize/10,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(heightSize/90),
                                      color: const Color(0xff004466)),
                                  child: IconButton(onPressed: () {  }, icon: const Icon(Icons.arrow_forward_ios,),iconSize: heightSize/30, color: const Color(0xffffffff),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ) ,
                    ),
                     const Divider(
                      color: Color(0xffD9D9D9), //color of divider
                      height: 5, //height spacing of divider
                      thickness: 3, //thickness of divier line
                      indent: 25, //spacing at the start of divider
                      endIndent: 25, //spacing at the end of divider
                    ),
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

Widget profileinfo(BuildContext context){
  double widthSize = MediaQuery.of(context).size.width;
  double heightSize = MediaQuery.of(context).size.height;
  return Container(
    height: heightSize/3,
    width: widthSize,
    color: const Color(0xffffffff),
    child:Column(
        children: [
          Column(
              children:  [
                const Center(
                    child: Image(image: AssetImage('assets/images/profile.jpg'))),
                SizedBox(height:  heightSize/25,),
                Text("DEVI", style:  TextStyle(fontSize: widthSize/20,
                    color: const Color(0xff080808), fontWeight: FontWeight.normal)),
                Text("devi@gmail.com", style:  TextStyle(fontSize: widthSize/20,
                    color: const Color(0xff808080), fontWeight: FontWeight.normal),)
              ]
          ),
          SizedBox(height: heightSize/40,),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("EMPID-12345", style:  TextStyle(fontSize: widthSize/20,
                    color: const Color(0xff004466), fontWeight: FontWeight.normal)),

                VerticalDivider(
                  width: widthSize/100, //width space of divider
                  thickness: heightSize/200, //thickness of divier line
                  // indent: 10, //Spacing at the top of divider.
                  // endIndent: 10, //Spacing at the bottom of divider.
                  color: const Color(0xff000000),

                ),
                Text("Software Engineering", style:  TextStyle(fontSize: widthSize/20,
                    color: const Color(0xff004466), fontWeight: FontWeight.normal),),

              ],
            ),
          ),
        ]
    ) ,
  );
}
