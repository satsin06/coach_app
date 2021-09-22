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
          // appBar: AppBar(
          //   elevation: 0,
          //   automaticallyImplyLeading: false,
          //   backgroundColor: Color(0xff222220),
          //   bottom: TabBar(
          //     isScrollable: false,
          //     indicator: UnderlineTabIndicator(
          //         borderSide: BorderSide(width: 5.0, color: Color(0xff79dd72),),
          //         insets: EdgeInsets.symmetric(horizontal:50.0, vertical:30),
          //     ),
          //     tabs: [
          //       Tab(
          //         child: Text(''),
          //       ),
          //       Tab(
          //         child: Text(''),
          //       ),
          //       Tab(
          //         child: Text(''),
          //       ),
          //       Tab(
          //         child: Text(''),
          //       ),
          //       Tab(
          //         child: Text(''),
          //       ),
          //       Tab(
          //         child: Text(''),
          //       )
          //     ],
          //   ),
          // ),
          body: TabBarView(
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
