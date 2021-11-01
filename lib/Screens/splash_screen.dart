import 'dart:async';

import 'package:coach_app/services/auth_wrapper.dart';
import 'package:flutter/material.dart';

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
        builder: (context) => AuthWrapper()
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0)
              ),
              child: Image.asset(
                'assets/images/LOGO.PNG',
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
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