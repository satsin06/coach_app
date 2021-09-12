import 'package:flutter/material.dart';
import 'package:coach_app/custom_icons_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Test'),
              Stack(
                children: [
                  Text(
                    'COACH',
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'GeometricSlab'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(68, 34, 0, 0),
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
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GeometricSlab',
                  color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
