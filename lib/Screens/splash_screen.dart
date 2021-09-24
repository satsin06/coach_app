import 'dart:async';

import 'package:coach_app/Screens/initial_screen.dart';
import 'package:flutter/material.dart';

import '../custom_icons_icons.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }


  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => InitialPage()
    )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Text(
                        'COACH',
                        style: TextStyle(
                            fontSize: 68,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'GeometricSlab'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(57, 28, 0, 0),
                        child: Icon(
                          CustomIcons.name,
                          color: Color(0xff79dd72),
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    CustomIcons.flash,
                    color: Color(0xff79dd72),
                    size: 60,
                  ),
                  Text(
                    'APP',
                    style: TextStyle(
                        fontSize: 68,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GeometricSlab',
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.22,
          ),
          Center(
            child: Text("powered by",
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Center(
            child: Text("< e a s y c o d e >",
                style: TextStyle(color: Colors.white, fontSize: 32)),
          )
        ],
      ),
    );
  }
}