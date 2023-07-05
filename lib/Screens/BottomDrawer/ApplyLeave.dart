import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Dashboard/Dashbordpunch.dart';
import 'package:intl/intl.dart';

import 'LeaveRequest.dart';

class ApplyLeave extends StatefulWidget {
  const ApplyLeave({Key? key,}) : super(key: key);
  //final DateTime initialDate;


  @override
  State<ApplyLeave> createState() => _ApplyLeaveState();
}

class _ApplyLeaveState extends State<ApplyLeave> {
 // DateTime? Date = DateTime(1900,12, 30);
  TextEditingController dateInputController = TextEditingController();
  TextEditingController dateInputController1 = TextEditingController();
  String? _chosenValue;
  String? _chosenValue2;

  @override
  void initState() {
    dateInputController.text = ""; //set the initial value of text field
    super.initState();
  }

  String selectedDate = 'Tap to select date';

  // Future<void> _selectDate(BuildContext context) async {
  //    DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(), // Set the initial date
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2100),
  //   );
  //
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked ; // Update the selected date
  //       print(selectedDate);
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff004466),
        leading: IconButton
          (icon: const Icon(Icons.arrow_back), onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const punchin()));
        },),
        title: const Text('ApplyLeave', ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.notifications_none),)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:EdgeInsets.only(top:Height/30, left: Width/25),
                  child: const Image(image: AssetImage('assets/images/profile.jpg')),
                ),
                SizedBox(width: Width/4,),
                Column(
                  children:  [
                    Text('Saravanan' ,style: TextStyle(fontSize: Height/25,color: const Color(0xff000000), fontWeight: FontWeight.bold),),
                    Text('10805' ,style: TextStyle(fontSize: Height/35,color: const Color(0xff000000),fontWeight: FontWeight.normal),),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:EdgeInsets.only(top:Height/90, left: Width/13),
                  child: Container(
                    height: Height/50, width: Width/30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Height/2),
                    color: const Color(0xff004466),
                    ),
                  ),
                ),
                SizedBox(width: Width/50,),
                Column(
                  children:[
                    Padding(
                      padding: EdgeInsets.only(top:Height/30, ),
                      child: Text('Total Leaves' ,style: TextStyle(fontSize: Height/35,color: const Color(0xff000000), fontWeight: FontWeight.normal),),
                    ),
                    Text('10' ,style: TextStyle(fontSize: Height/ 40,color: const Color(0xff000000),fontWeight: FontWeight.normal),),
                  ],
                ),
                SizedBox(width: Width/12,),
                Padding(
                  padding:EdgeInsets.only(top:Height/80, left: Width/7),
                  child: Container(
                    height: Height/50, width: Width/30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Height/2),
                      color: const Color(0xff004466),
                    ),

                  ),
                ),
                SizedBox(width: Width/50,),
                Column(
                  children:[
                    Padding(
                      padding: EdgeInsets.only(top:Height/30, ),
                      child: Text('Leaves Used' ,style: TextStyle(fontSize:Height/35,color: const Color(0xff000000), fontWeight: FontWeight.normal),),
                    ),
                    Text('0' ,style: TextStyle(fontSize:Height/40,color: const Color(0xff000000),fontWeight: FontWeight.normal),),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Height/40, left: Width/12),
                      child: Container(
                        height: Height/13, width: Width/5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Width/50),
                          border: Border.all(color: const Color(0xff000000),
                            width: Width/120,
                          ),
                          color: const Color(0xff0F9524),
                        ),
                       child: Center(child: Text('02' ,style: TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: Width/15),)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Width/12,top: Height/70),
                      child: Text('Sick Leave', style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.w700, fontSize: Width/25,)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Height/40, left: Width/8),
                      child: Container(
                        height: Height/13, width: Width/5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Width/50),
                          border: Border.all(color: const Color(0xff000000),
                            width: Width/120,
                          ),
                          color: const Color(0xffA18FFB),
                        ),
                        child: Center(child: Text('04' ,style: TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: Width/15),)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Width/12,top: Height/70),
                      child: Text('Casual Leave', style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.w700, fontSize: Width/25,)),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: Height/40, left: Width/8),
                      child: Container(
                        height: Height/13, width: Width/5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Width/50),
                          border: Border.all(color: const Color(0xff000000),
                            width: Width/100,
                          ),
                          color: const Color(0xff0D8AC8),
                        ),
                        child: Center(child: Text('04' ,style: TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: Width/15),)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Width/12,top: Height/70),
                      child: Text('Medical Leave', style: TextStyle(color: const Color(0xff000000), fontWeight: FontWeight.w700, fontSize: Width/25,)),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: Width/2,top: Height/40),
              child: Text('Personal Statics', style: TextStyle(color: const Color(0xff000000), fontSize: Width/23, fontWeight:FontWeight.w700),),
            ),
            SizedBox(height: Height/40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Container(
                   height: Height/20,
                   width: Width/2.5,
                   color:  const Color(0xffD9D9D9),
                     padding: EdgeInsets.only(left: Width/20),
                        child: DropdownButton<String>(
                          value: _chosenValue,
                          style: const TextStyle(color: Color(0xff000000)),
                          items: <String>['Sick Leave', 'Medical Leave', 'Casual Leave'].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                                   value: value,
                              child: Text(value),
                            );
                        }).toList(),
                          hint: const Text("Leave Type",style: TextStyle(color: Color(0xff616161),fontSize: 16,fontWeight: FontWeight.bold),),
                    onChanged: (String? value) {
                       setState(() {
                        _chosenValue = value;
                });
             },
            ),
           ),
                 Container(
                   height: Height/20,
                   width: Width/2.5,
                  color:  const Color(0xffD9D9D9),
                  padding: EdgeInsets.only(left: Width/20),
                  child: DropdownButton<String>(
                    value: _chosenValue2,
                    style: const TextStyle(color: Color(0xff000000)),
                    items: <String>['Sick Leave', 'Medical Leave', 'Casual Leave'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: const Text("Leave Mode",style: TextStyle(color: Color(0xff616161),fontSize: 16,fontWeight: FontWeight.bold),),
                    onChanged: (String? value) {
                      setState(() {
                        _chosenValue2 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: Height/40,),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: Height/20,width:Width/ 2.5,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xff3C90BB),
                      border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                      focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                      enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1)),
                      suffixIcon: IconButton( onPressed: () {
                      //  _selectDate(context);
                      }, icon:Icon(Icons.calendar_today_outlined, color:const Color(0xff3C90BB),size: Height/30,))
                      ),
                  ),
                  ),
                SizedBox(
                  height: Height/20,width:Width/ 2.5,
                  child: TextFormField(
                 inputFormatters: [
                   LengthLimitingTextInputFormatter(10),
                  ],
                    decoration: InputDecoration(
                        fillColor: const Color(0xff3C90BB),
                    border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                    enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1)),
                        suffixIcon: IconButton( onPressed: () async{
                            DateTime? pickedDate = await showDatePicker(
                            context: context, initialDate: DateTime.now(),
                            firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101)
                            );
                            if(pickedDate != null ){
                            print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                            setState(() {
                            dateInputController.text = formattedDate; //set output date to TextField value.
                            });
                            }else{
                            print("Date is not selected");
                             }
                            },
                            icon:Padding(
                              padding: EdgeInsets.only(bottom:Height/5),
                              child: Icon(Icons.calendar_today_outlined, color:const Color(0xff3C90BB),size: Height/30,),
                            ))
                    ),
                  ),
                  ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: Width/2,top: Height/40),
              child: Text('Request Details', style: TextStyle(color: const Color(0xff000000), fontSize: Width/23, fontWeight:FontWeight.normal),),
            ),
            SizedBox(height: Height/40,),
            Padding(
              padding: EdgeInsets.only(left: Width/15, right: Width/15),
              child: TextFormField(
                maxLines: 3,
                decoration: const InputDecoration(
                    fillColor: Color(0xff3C90BB),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 1)),

                ),


              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: Height/40),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff004466),
                   // onPrimary: Colors.white,
                    //shadowColor: Colors.greenAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(Width/40)),
                    minimumSize: Size(Width/2.5, Height/15), //////// HERE
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>const LeaveRequest()));
                  },
                  child: Text('Submit', style:  TextStyle(color: const Color(0xffffffff), fontWeight: FontWeight.w700, fontSize: Height/25),)),
            )

          ],
        ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
}

