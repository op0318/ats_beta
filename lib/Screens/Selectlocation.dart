import 'package:flutter/material.dart';

class SelectMapping extends StatelessWidget {
  const SelectMapping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List locations=[
      'Guindy office',
      'Mepz office',
      'Tidel office',
      'Thanjavur office',
      'Client Location',
    'Work from home'];



    return Scaffold(
      body: Center(
        child:
        Container(decoration:
        BoxDecoration(
            borderRadius: BorderRadius.circular(15), 
            color: Colors.white),
          margin: EdgeInsets.only(left: 6,right: 6),
          padding: EdgeInsets.all(10),
          height: 580,
          width: 420,
          child: Column(

            children: [
              Text('Select Location',style: TextStyle(fontSize: 33,fontWeight: FontWeight.w500),
              ),
            SizedBox(height: 20,),
            SizedBox(height: 400,width: 400,child:
            Container(color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...locations.map((e){return Padding(
                    padding: const EdgeInsets.only(left: 70,right: 30,top: 30),
                    child: Text(e,style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),
                    ),
                  );}).toList()],
              ),



            ),),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(height: 50,width: 100,color: Colors.blue,),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text('Hello0000'),
                )],
            )],
          ),

        ),
      ),


    );
  }
}
