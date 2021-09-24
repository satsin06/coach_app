import 'package:coach_app/Screens/tabs/fifthScreen.dart';
import 'package:coach_app/Screens/tabs/firstScreen.dart';
import 'package:coach_app/Screens/tabs/fourthScreen.dart';
import 'package:coach_app/Screens/tabs/fourthScreenSet.dart';
import 'package:coach_app/Screens/tabs/secondScreen.dart';
import 'package:coach_app/Screens/tabs/sixthScreen.dart';
import 'package:coach_app/Screens/tabs/thirdScreen.dart';
import 'package:flutter/material.dart';

class TaberScreen extends StatelessWidget {
  const TaberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              FirstTabScreen(),
              SecondTabScreen(),
              ThirdTabScreen(),
              FourthTabScreen(),
              FourthScreenSet(),
              FifthTabScreen(),
              SixthTabScreen()
            ],
          ),
        ));
  }
}
