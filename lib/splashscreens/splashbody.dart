import 'package:ats_beta/Screens/Homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Screens/Authentication/login.dart';
import 'Expandingcircle.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({Key? key, required this.onComplete}) : super(key: key);
  final Function onComplete;

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  bool startFirst = false;
  bool startSecond = false;
  bool startFinalCircle = false;
  int? mobiledata;

  @override
  void initState() {
    super.initState();
    startAnimation();

      SaveData().whenComplete(() =>{
        Get.to(mobiledata == null ? const HomeScreen(): Employeepage()),




      });

  }

  Future<void> SaveData() async {
    SharedPreferences preferences =await SharedPreferences.getInstance();
    var mobilenumber = preferences.getString('phone');
    setState(() {
      mobiledata = mobilenumber as int;


    });
    print(mobiledata);


  }

  void startAnimation() {
    _controller = AnimationController(vsync: this);
    _controller.duration = const Duration(
      seconds: 5,
    );
    animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
      reverseCurve: Curves.easeOut,
    );

    _controller.forward();
    _controller.addListener(
          () {
        if (animation.value == 1) {
          _controller.reverse();
        } else if (animation.status == AnimationStatus.reverse) {
          if (animation.value <= 0.5) {
            _controller.stop();
            setState(
                  () {
                startFirst = true;
                debugPrint('start first is true.');
              },
            );
            Future.delayed(const Duration(seconds: 1)).then(
                  (value) {
                debugPrint("second circle start");
                setState(
                      () {
                    startSecond = true;
                  },
                );
                Future.delayed(const Duration(seconds: 1)).then(
                      (value) {
                    debugPrint("last circle start");
                    setState(() {
                      startFinalCircle = true;
                    });
                    widget.onComplete();
                  },
                );
              },
            );
          }
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Positioned.fill(
          child: SizedBox(),
        ),
        // * green circle
        if (startFirst)
          const Positioned.fill(
            child: Center(
              child: ExpandingCircle(
                circleColor: Color(0xff004466),
              ),
            ),
          ),

        // * blue circle

        // if (startSecond)
        //   const Positioned.fill(
        //     child: Center(
        //       child: ExpandingCircle(
        //         circleColor: Color(0xff004466),
        //       ),
        //     ),
        //   ),

        // * this is our animation

        AnimatedBuilder(
          animation: animation,
          builder: (ctx, child) {
            return Positioned(
                //left: width / 2,
                right: width/8,
                top: (height * animation.value) - 60,
                // child: Container(
                //   height: 100,
                //   width: 100,
                //   decoration: const BoxDecoration(
                //     color: Colors.white,
                //     shape: BoxShape.circle,
                //   ),
                child:  Stack(
                  children: [
                    Center(
                      child: Container(
                        height:height/5,
                        width: width/1.3,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                          shape: BoxShape.circle,
                        ),

                        child: const Center(
                          child: Text('ATS',style: TextStyle(
                            color: Color(0xff004466),
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),),
                        ),
                      ),
                    ),

                  ],
                )
            );
          },
        ),

        // * white circle

        if (startFinalCircle)
          const Positioned.fill(
            child: Center(
              child: ExpandingCircle(
                circleColor: Color(0xffffffff),
              ),
            ),
          ),
      ],
    );
  }
}