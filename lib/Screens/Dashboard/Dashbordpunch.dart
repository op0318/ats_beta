// ignore_for_file: overridden_fields

import 'dart:async';
import 'dart:math';
import 'package:ats_beta/Screens/BottomDrawer/DashboardLeave.dart';
import 'package:flutter/material.dart';
import 'package:stacked_chart/stacked_chart.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:image_picker/image_picker.dart';
import '../BottomDrawer/ApplyLeave.dart';
import '../BottomDrawer/MyTickets.dart';
import '../BottomDrawer/Myteams.dart';
import '../BottomDrawer/Notifications.dart';
import '../BottomDrawer/personalDetails.dart';

class punchin extends StatefulWidget {
  const punchin({Key? key, this.Address, }) : super(key: key);
  final Address;
      //final List datas ;

  @override
  State<punchin> createState() => _punchinState();
}

class _punchinState extends State<punchin> {
    String? location;
    bool isPunchedIn = false;
    DateTime? punchInTime;
    DateTime? punchOutTime;
    String ? data;



    //bool _isDrawerOpen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      location =widget.Address.toString();
     // data = widget.datas .toList() ;

    });
  }
    String hoursString = "00", minuteString = "00", secondString = "00";
    int hours = 0, minutes = 0, seconds = 0;
    bool isTimerRunning = false, isResetButtonVisible = false;
    late Timer _timer;

    void startTimer() {
      setState(() {
        isTimerRunning = true;
      });
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        _startSecond();
      });
    }
    void pauseTimer() {
      _timer.cancel();
      setState(() {
        isTimerRunning = false;
      });
      isResetButtonVisible = checkValues();
    }
    void _startSecond() {
      setState(() {
        if (seconds < 59) {
          seconds++;
          secondString = seconds.toString();
          if (secondString.length == 1) {
            secondString = "0$secondString";
          }
        } else {
          _startMinute();
        }
      });
    }
    void _startMinute() {
      setState(() {
        if (minutes < 59) {
          seconds = 0;
          secondString = "00";
          minutes++;
          minuteString = minutes.toString();
          if (minuteString.length == 1) {
            minuteString = "0$minuteString";
          }
        } else {
          _starHour();
        }
      });
    }
    void _starHour() {
      setState(() {
        seconds = 0;
        minutes = 0;
        secondString = "00";
        minuteString = "00";
        hours++;
        hoursString = hours.toString();
        if (hoursString.length == 1) {
          hoursString = "0$hoursString";
        }
      });
    }
    void resetTimer() {
      _timer.cancel();
      setState(() {
        seconds = 0;
        minutes = 0;
        hours = 0;
        secondString = "00";
        minuteString = "00";
        hoursString = "00";
        isResetButtonVisible = false;
      });
    }
    bool checkValues() {
      if (seconds != 0 || minutes != 0 || hours != 0) {
        return true;
      } else {
        return false;
      }
    }
    @override
    Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${_formatDigits(now.day)}-${_formatDigits(now.month)}-${now.year}";
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
          child:Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:Height/25, left: Width/25),
                    child: Image(image: const AssetImage('assets/images/profile.jpg'),height: Height/10,),
                  ),
                  SizedBox(width: Width/12,),
                  Column(
                    children: [
                     Text('$data' ,style: TextStyle(fontSize: Width/20,color: const Color(0xff000000)),),
                      Text('10801' ,style: TextStyle(fontSize: Width/20,color: const Color(0xff000000)),),
                    ],
                  ),
                  SizedBox(width: Width/8,),
                  Padding(
                    padding: EdgeInsets.only(right: Width/30),
                    child: Text(
                      formattedDate,
                      style: TextStyle(fontSize: Width/25, color: const Color(0xff535353)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:EdgeInsets.only(top: Height/25),
                child: const WeeklyChartDemo(),
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff004466),
                      shadowColor: const Color(0xffffffff),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(Width/1.3, Height/15), //////// HERE
                    ),
                    onPressed: () {
                      setState(() {
                        if (isPunchedIn && isTimerRunning) {
                          pauseTimer();
                          // Punch out
                          punchOutTime = DateTime.now();
                          isPunchedIn = false;
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => punchoutdialog(context),
                          );
                        }
                        else if(isTimerRunning == false){
                          // Punch in
                          punchInTime = DateTime.now();
                          startTimer();
                          isPunchedIn = true;
                        }
                      });
                  },
                    child: Text(isPunchedIn ? 'Punch-Out' : 'Punch-In'),
                  ),
                  Stack(
                    children: [
                      Container(
                      height: Height/4,
                      width: Width,
                      color: const Color(0xffffffff),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularStepProgressIndicator(
                            totalSteps: 35,
                            currentStep: 1,
                           // padding : Height/2,
                            selectedColor: const Color(0xff9BD936),
                            unselectedColor: const Color(0xff1A55ED),
                            selectedStepSize: Height/50,
                            unselectedStepSize: Width/25,
                            width: Width/2.2,
                          ),
                        ],
                      ),
                    ),
                      Positioned(right: Width/2.6,
                          top: Height/10,
                          child: Row(children: [
                        Text(
                          "$hoursString:$minuteString:$secondString",
                          style: TextStyle(fontSize: Width/15,color: const Color(0xff000000)),
                        ),

                      ],))
                      ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: Width/10 ,),
                        child: Icon(Icons.location_on_outlined, color: const Color(0xffEF0B0B),size: Height/20,),
                      ),
                      Text('Your Location  :  $location', style: TextStyle(color: const Color(0xff004466), fontWeight: FontWeight.w500, fontSize: Width/20),)
                    ],
                  ),
                  Row(
                    children:[
                      Padding(
                        padding: EdgeInsets.only(left: Width/8, top: Height/20),
                        child: Column(
                          children: [
                            Text('Punch - In' , style: TextStyle(fontSize: Width/25, color: const Color(0xff65A3C2)),),
                            if (punchInTime != null)
                            Text('${formatTime(punchInTime!)} AM', style: TextStyle(fontSize: Width/25, color: const Color(0xff000000)),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Width/3, top: Height/20),
                        child: Column(
                          children: [
                            Text('Punch - Out' , style: TextStyle(fontSize: Width/25, color: const Color(0xff65A3C2)),),
                            if (punchOutTime != null)
                            Text('${formatTime(punchOutTime!)}PM', style: TextStyle(fontSize: Width/25, color: const Color(0xff000000)),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: Height/50,),
                  const MySeparator(),
                  Row(
                    children:[
                      Padding(
                        padding: EdgeInsets.only(left: Width/8, top: Height/25),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: Height/40,),
                              child: Text('Late - In' , style: TextStyle(fontSize: Width/25, color: const Color(0xff65A3C2)),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: Height/25),
                              child: Text('----', style: TextStyle(fontSize: Width/25, color: const Color(0xff000000)),),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Width/2.4, top: Height/25),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: Width/15, bottom: Height/40),
                              child: Text('Login-Hours' , style: TextStyle(fontSize: Width/25, color: const Color(0xff65A3C2)),),
                            ),
                           Padding(
                             padding: EdgeInsets.only(right: Width/15, bottom: Height/25),
                             //child: Text('${formatDuration(getDuration())}', style: TextStyle(fontSize: Width/25, color: const Color(0xff000000)),),
                             child: Text('$hoursString:$minuteString:$secondString', style: TextStyle(fontSize: Width/25, color: const Color(0xff000000)),),
                           ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
      ),
      bottomNavigationBar: buildMyNavBar(context),
      //drawer: NavigationDrawer(),
    );
  }

  // Widget NavigationDrawer(){
  //     return Drawer(
  //     backgroundColor:Color(0xff080808)
  //     );
  // }
  String formatTime(DateTime dateTime) {
      String hour = dateTime.hour.toString().padLeft(2, '0');
      String minute = dateTime.minute.toString().padLeft(2, '0');
      String second = dateTime.second.toString().padLeft(2, '0');

      return '$hour:$minute:$second';
    }
  String _formatDigits(int digit) {
    return digit.toString().padLeft(2, '0');
  }

 Widget punchoutdialog(BuildContext context){
   double heightsize = MediaQuery.of(context).size.height;
   double widthsize = MediaQuery.of(context).size.width;
   return Dialog(
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(heightsize/40),
     ),
     child: Container(
       padding: EdgeInsets.only(right:widthsize/25,left: widthsize/25, top: heightsize/25 ),
       child: Column(
         mainAxisSize: MainAxisSize.min,
         children: [
           Text('Punch Out',
             style: TextStyle(fontSize: heightsize/25,
               fontWeight: FontWeight.w700, color: const Color(0xff004466)
             ),
           ),
           SizedBox(height: heightsize/70,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Time : ', style: TextStyle(fontSize: heightsize/35, color: const Color(0xff9D9696)),),
               Text(formatDuration(getDuration()), style: TextStyle(fontSize: heightsize/35,color: const Color(0xff000000))),
             ],
           ),
           SizedBox(height: heightsize/70,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text('Location: ', style: TextStyle(fontSize: heightsize/35, color: const Color(0xff9D9696)),),
               Text('$location', style: TextStyle(fontSize: heightsize/35,color: const Color(0xff000000))),
             ],
           ),
           const Image(image: AssetImage('assets/images/punchoutimage.png')),
           SizedBox(height: heightsize/70,),
           ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: const Color(0xff004466),
               shadowColor: const Color(0xffffffff),
               elevation: 3,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(32.0)),
               minimumSize: Size(widthsize/1.3, heightsize/15), //////// HERE
             ),
             onPressed: () {
               dialogBuilder(context);
               Future.delayed(const Duration(seconds: 7), () {
                 Navigator.of(context).pop();
               });
             },
             child: Text('OK', style: TextStyle(color:const Color(0xffffffff), fontSize: heightsize/25),),
           ),
           SizedBox(height: heightsize/25,),
         ],
       ),
     ),
   );
 }
    Duration getDuration() {
      return punchOutTime!.difference(punchInTime!);
    }
    String formatDuration(Duration duration) {
      String twoDigits(int n) => n.toString().padLeft(2, '0');
      String twoDigitHours = twoDigits(duration.inHours);
      String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
      String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
      return "$twoDigitHours:$twoDigitMinutes:$twoDigitSeconds";
    }

}

Widget customDrawer(BuildContext context){
  double Width = MediaQuery.of(context).size.width;
  double Height = MediaQuery.of(context).size.height;
  return SizedBox(
    height: Height,
    width: Width/4,
    child: Drawer(
      width: MediaQuery.of(context).size.width * 0.50,
      backgroundColor: const Color(0xff004466),
      child: ListView(
        children: [
          ListTile(
            title: Padding(
              padding: EdgeInsets.only(right: Width/1.1),
              child: const Icon(Icons.cancel, color:  Color(0xffffffff),),
            ),
            onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const punchin()));
            },
          ),
          ListTile(
            title: const Text("Apply Leave", style: TextStyle(color:Color(0xffffffff)),),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const ApplyLeave()));
            },
          ),
          ListTile(
            title: const Text("Punch Details",style: TextStyle(color:Color(0xffffffff))),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>punchdetails()));
            },
          ),
          ListTile(
            title: const Text("personal Details",style: TextStyle(color:Color(0xffffffff))  ),
            onTap: (){
              // Navigator.of(context).pop();
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const PersonalDetails()));
            },
          ),
          ListTile(
            title: const Text("My Teams", style: TextStyle(color:Color(0xffffffff))),
            onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const myteams()));
            },
          ),
          ListTile(
            title: const Text("Notifications", style: TextStyle(color:Color(0xffffffff))),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const notifications()));
            },
          ),
          ListTile(
            title: const Text("My Tickets", style: TextStyle(color:Color(0xffffffff))),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const MyTickets()));
            },
          )
        ],
      ),
    ),
  );
}

Widget Logoutdialog(BuildContext context){
  double heightsize = MediaQuery.of(context).size.height;
  double widthsize = MediaQuery.of(context).size.width;
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(heightsize/40),
    ),
    child: Container(
      padding: EdgeInsets.only(right:widthsize/25,left: widthsize/25, top: heightsize/25 ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Image(image: AssetImage('assets/images/profile.png')),
          SizedBox(height: heightsize/70,),
          Row(
            children: [
              Material(
              elevation: 5,
                color: const Color(0xff1643f7),
                borderRadius: BorderRadius.circular(heightsize/70,),
                child: SizedBox(height: heightsize/20,width: widthsize/3,
                  child: MaterialButton(
                    onPressed: (){
                    }, child: const Text('OK' ,style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold),),),
                ),
              ),
              SizedBox(height: heightsize/70,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff004466),
                  shadowColor: const Color(0xffffffff),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                  //  minimumSize: Size(widthsize/1.3, heightsize/15), //////// HERE
                ),
                onPressed: () {
                  //  // Future.delayed(const Duration(seconds: 5), () {
                  //  //   Navigator.of(context).pop();
                  // // }
                  //  );
                },
                child: Text('Cancel', style: TextStyle(color:const Color (0xffffffff), fontSize: heightsize/25),),
              ),
            ],
          ),

          SizedBox(height: heightsize/25,),
        ],
      ),
    ),
  );
}

Future <void> dialogBuilder(BuildContext context) async {
  double heightsize = MediaQuery.of(context).size.height;
  double Widthsize = MediaQuery.of(context).size.width;
  return showDialog(
      context: context,
      builder: (context) {
        Future.delayed( const Duration(seconds: 7), () {
          Navigator.of(context).pop(true);
        });
        return  SizedBox(
          height: heightsize/1.2,
          width: Widthsize/1.8,
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(heightsize/40),
            ),
            contentPadding: EdgeInsets.only(top: heightsize/70, left: Widthsize/25, bottom: heightsize/7, right: Widthsize/25),
            title: const Image(image: AssetImage('assets/images/correct.png')),
            content: Text('Punch-out Successfully',
              style: TextStyle(color:const Color(0xff0038FF), fontSize: heightsize/25 ),),
          ),
        );
      });
}

Widget buildMyNavBar(BuildContext context) {
  double Height = MediaQuery.of(context).size.height;
  double Width = MediaQuery.of(context).size.width;
  return  Container(
    height: Height/12,
    width: Width/4,
    color: const Color(0xff004466),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed:(){
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => customDrawer(context)));
        }, icon:ImageIcon(const AssetImage('assets/images/Listicon.png'),size:Height/25,color: const Color(0xffffffff),)),
        Container(
          height: Height/10,
          width: Width/6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Height/20),
            color: const Color(0xffffffff),
          ),
          child:IconButton(onPressed: (){
            // Navigator.pushReplacement(context, MaterialPageRoute(
            //     builder: (context) => Logout()));
          }, icon: Icon(Icons.home_outlined, size: Height/17,color: const Color(0xff004466),)),
        ),
        IconButton(onPressed: (){
          Logoutdialog(context);
        }, icon: Icon(Icons.logout, size: Height/20,color: const Color(0xffffffff),)),
      ],
    ),

  );

}
enum WeekDay { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

class WeeklyChartDemo extends StatefulWidget {
  const WeeklyChartDemo({Key? key}) : super(key: key);

  @override
  _WeeklyChartDemoState createState() => _WeeklyChartDemoState();
}

class _WeeklyChartDemoState extends State<WeeklyChartDemo> {
  final rng = Random();
  List<BookingStatus> weeklyStatus = [];

  @override
  void initState() {
    createRandomWeeklyStatus();
    super.initState();
  }

  void createRandomWeeklyStatus() {
    weeklyStatus.clear();
    final List<BookingStatus> weeklyData = [];
    WeekDay.values
        .map(
          (day) => weeklyData.add(BookingStatus(
          dateTime: DateTime.now().add(
            Duration(days: day.index),
          ),
          bookings: {
            'Unfilled booking': rng.nextInt(20),
            'Filled booking': rng.nextInt(20),
          },
          onPressed: createRandomWeeklyStatus)),
    )
        .toList();
    setState(() {
      weeklyStatus = weeklyData;
    });
  }

  @override
  Widget build(BuildContext context) {
    double Height = MediaQuery.of(context).size.height;
    double Width = MediaQuery.of(context).size.width;
    return StackedChart(
      data: weeklyStatus,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      size: Size(Width/1.05, Height/4.5),
      showLabel: true,
      enableShadow: true,
    );
  }
}

class BookingStatus extends ChartData<LabelData, int> implements Comparable<BookingStatus> {
  final DateTime dateTime;
  final Map<String, int> bookings;
  @override
  final VoidCallback? onPressed;

  static Map<LabelData, int> convertBookingToMapOfLabelDataInt(Map<String, int> bookings) {
    final Map<LabelData, int> convertedData = {};
    bookings.entries
        .map((e) => convertedData.addAll({LabelData(e.key): e.value}))
        .toList();
    return convertedData;
  }

  int get totalBookingCount =>
      bookings.values.reduce((total, value) => total = total + value);

  BookingStatus(
      {required this.dateTime, this.bookings = const {}, this.onPressed})
      : super(
    labelWithValue: convertBookingToMapOfLabelDataInt(bookings),
    barLabel: dateTime.day.toString(),
    onPressed: onPressed,
  );

  @override
  int compareTo(BookingStatus other) => dateTime.compareTo(other.dateTime);
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color =const Color(0xff707070)})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (1.2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}



