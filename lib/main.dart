

import 'package:flutter/material.dart';

void main() {
  runApp(const statemanagement());
}

class statemanagement extends StatefulWidget {
  const statemanagement({Key? key}) : super(key: key);

  @override
  State<statemanagement> createState() => _statemanagementState();
}

class _statemanagementState extends State<statemanagement> {
  final empcontroller=TextEditingController();
  List database=[
    {'empid':['10801', '10802', '10803', '10804', '10805', '10806', '10807', '10809', '10901']},
    {'name':['thiru','devi','vini','suba','Aravi','venkat','aji','aji','sadhu','reha']}];


   String? empno;
  void checkde() {
    for (int i = 0; i < (database[0]['empid'] as List<String>).length; i++) {
      if ((database[0]['empid'] as List<String>)[i] == empcontroller.text.toString()) {
        print("welcome to Sightspectrum");
        return;
      }
      else {
      }

    }
    print('please enter the valid mail id');
  }









  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                Text("Login Page", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
              ),const SizedBox(height: 20,),
                Row(children: [Text(style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                    "Enter the valid id:"),SizedBox(width: 10,),
                  Container(
                    color: Colors.white,
                    height: 50,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: TextField(
                      controller: empcontroller,
                    decoration: InputDecoration(focusColor: Colors.white,
                        border: OutlineInputBorder(
                           )),
                    ),
                  ),
                )],),
                SizedBox(height: 20,),
                Container(height: 40,
                  width: 200,
                  child: ElevatedButton(style: ButtonStyle(

                  ),
                      onPressed: checkde, child: Text(style: TextStyle(color: Colors.white),'Sign INNNNNNNN')),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }
}


