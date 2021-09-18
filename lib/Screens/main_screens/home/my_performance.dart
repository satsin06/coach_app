import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../custom_icons_icons.dart';
import '../bottom_bar.dart';

class MyPerformance extends StatefulWidget {
  const MyPerformance({Key? key}) : super(key: key);

  @override
  _MyPerformanceState createState() => _MyPerformanceState();
}

class _MyPerformanceState extends State<MyPerformance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BottomBar()));
            },
            icon: Icon(
              CustomIcons.back_return,
              color: Colors.black,
              size: 32,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 24),
              child: Stack(
                children: [
                  Text(
                    'COACH APP',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w100,
                        color: Colors.black,
                        fontFamily: 'GeometricSlab'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(27, 13, 0, 0),
                    child: Icon(
                      CustomIcons.name,
                      color: Color(0xff79dd72),
                      size: 6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(88, 5, 0, 0),
                    child: Icon(
                      CustomIcons.flash,
                      color: Color(0xff79dd72),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8),
          child: Center(
            child: Column(
              children: [
                Text(
                  "MI RENDIMIENTO",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w800),
                ),
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              calendarStyle: CalendarStyle(
                  canMarkersOverflow: true,
              ),
            ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
