import 'package:ats_beta/Screens/Splashscreen.dart';
import 'package:ats_beta/Screens/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller = PageController();
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor:Color(0xff3583cc),
      body: PageView(
        controller: Controller,
        children: const [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),

    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const Image(image: AssetImage('assets/images/page1.png')),
          SizedBox(height: Height/10,),
          Text('Tracking' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
          SizedBox(height: Height/60,),
          Padding(
            padding:  EdgeInsets.only(left: Width/15, right: Width/20),
            child: Text('App is based on tracking the location details of the employee login & logout time',
                style:TextStyle(color: const Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal) ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right:Width/4,top: Height/9),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:
                      (context) => splashscreen()
                  )
                  );
                },
                    child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
              ),
              Padding(
                padding: EdgeInsets.only(left: Width/5, top: Height/9),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:
                      (context) => const Page2()));
                }, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
                ),
              )
            ],)
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Container(
      child: Column(
        children:  [
          Padding(
            padding: EdgeInsets.symmetric(vertical:Height/10, horizontal: Width/20  ),
            child: const Image(image: AssetImage('assets/images/page2.png')),
          ),
          Text('Monitoring' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
          SizedBox(height: Height/50,),
          Padding(
            padding:  EdgeInsets.only(left: Width/15, right: Width/20),
            child: Text('App is Based on Monitoring Daily and Monthly Attendance Details of employees',
              style:TextStyle(color:  const Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right:Width/5 ,top: Height/9),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:
                      (context) => const Page1()));
                },
                    child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
              ),
              Padding(
                padding: EdgeInsets.only(left: Width/5, top: Height/9),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:
                      (context) => const Page3()));
                }, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
                ),
              )
            ],)

        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return  Container(
      child: Column(
        mainAxisAlignment:  MainAxisAlignment.center,
        children:  [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Width/10, vertical: Height/10),
            child: const Image(image: AssetImage('assets/images/page3.png')),
          ),
          SizedBox(height: Height/40,),
          Text('Visualizing' , style: TextStyle(fontSize:Height/30, color: const Color(0xffffffff), fontWeight: FontWeight.bold ),),
          SizedBox(height: Height/50,),
          Padding(
            padding: EdgeInsets.only(left: Width/15, right: Width/20),
            child: Text('App  is based on Visualizing the employee details', style:TextStyle(color:  Color(0xffF5FAFD), fontSize: Height/30, fontWeight:  FontWeight.normal),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right:Width/5, top: Height/8),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:
                      (context) => const Page2()));
                },
                    child: Text('Skip',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),)),
              ),
              Padding(
                padding: EdgeInsets.only(left: Width/5, top: Height/8),
                child: TextButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:
                      (context) => Employeepage()));
                }, child:  Text('Next',style: TextStyle(fontSize: Height/30, color: Color(0xffe6e6e6)),),
                ),
              )
            ],)
        ],
      ),
    );
  }
}
