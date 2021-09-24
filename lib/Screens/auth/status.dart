import 'dart:async';

import 'package:coach_app/Screens/auth/phone_auth.dart';
import 'package:coach_app/Screens/auth/signin.dart';
import 'package:coach_app/services/auth_wrapper.dart';
import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
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
        builder: (context) => PhoneAuth()
    )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                RichText(text: TextSpan(
                  style: TextStyle(color: Color(0xff79dd72)),
                 children: [
                   TextSpan(text: '25 %\n', style: TextStyle(fontSize: 80)),
                   TextSpan(text: 'Completado', style: TextStyle(fontSize: 32))
                 ]
                ),
                ),
                SizedBox(height: 30,),
                Image.asset(
                  'assets/images/status.PNG',
                  height: 250,
                ),
              ],
            ),
            Text(
              "Estamos creando tu plan de\n entrenamiento y dieta,\n por favor espera...",
              style: TextStyle(color: Color(0xff79dd72), fontSize: 32, fontWeight: FontWeight.bold,),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
