import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:
      Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [Flexible(flex:2,child: Container(color: Colors.white,   child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Padding(
                  padding: const EdgeInsets.all(12),
                  child: CircleAvatar(
                    radius: 40,

                      child: Image.asset('assets/images/profile.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0,left: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      ElevatedButton(

                          onPressed: (){}, child: Text('')),
                      Text('devi',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      Text('10801',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],),

                ),
                SizedBox(width: 80,),
                const Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text('1.1.2001',style: TextStyle(color: Colors.grey,
                    fontSize: 20,)
                  ),
                )],))),
            
            
            
            
            Flexible(flex: 4,child: Container(color: Colors.blue),),
            Flexible(flex: 3,child: Container(color: Colors.orange,),),
            Flexible(flex:4,child: Container(color: Colors.yellow,)),
            Flexible(flex:2,child: Container(color: Colors.grey))

          ],
        ),

      ))); }

}
