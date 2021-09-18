import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/Screens/main_screens/home/home_screen.dart';
import 'package:coach_app/widget/calendar_strip.dart';
import 'package:coach_app/widget/training_tile.dart';
import 'package:coach_app/widget/video_tile.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';

class Training extends StatelessWidget {
  const Training({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BottomBar()));
            },
            icon: Icon(
              CustomIcons.home,
              color: Colors.black,
            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
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
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'MI',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                              children: [
                            TextSpan(
                              text: 'ENTRENAMIENTO',
                              style: TextStyle(
                                  color: Color(0xff79dd72),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                            )
                          ])),
                      Theme(
                        data: Theme.of(context).copyWith(
                          cardColor: Colors.blue,
                        ),
                        child: PopupMenuButton(
                          itemBuilder: (context) {
                            return List.generate(2, (index) {
                              return PopupMenuItem(
                                child: Text(
                                  'button no $index',
                                  style: TextStyle(color: Colors.white),
                                ),
                              );
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Container(
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         CalendarStrip(16, "Lu", true),
              //         CalendarStrip(17, "Ma", false),
              //         CalendarStrip(18, "Mi", false),
              //         CalendarStrip(19, "Ju", false),
              //         CalendarStrip(20, "Vi", false),
              //         CalendarStrip(21, "Sa", false),
              //         CalendarStrip(22, "Do", false),
              //         CalendarStrip(23, "Do", false),
              //         CalendarStrip(24,"Ma", false),
              //         CalendarStrip(25,"Mi", false),
              //         CalendarStrip(26,"Ju", false),
              //         CalendarStrip(27,"Vi", false),
              //         CalendarStrip(28,"Sa", false),
              //         CalendarStrip(29,"Do", false),
              //         CalendarStrip(30,"Lu", false),
              //       ],
              //     ),
              //   ),
              // ),
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime(2019, 1, 15),
                lastDate: DateTime(2030, 12, 31),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: Colors.blueGrey,
                dayColor: Colors.teal[200],
                activeDayColor: Colors.white,
                activeBackgroundDayColor: Colors.redAccent[100],
                dotsColor: Color(0xFF333A47),
                //selectableDayPredicate: (date) => date.day != 23,
                //locale: 'en_ISO',
              ),
              SizedBox(
                height: 23,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[400],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Calentamiento\n',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800),
                                children: [
                                  TextSpan(
                                    text: '20 MIN',
                                    style: TextStyle(
                                        color: Colors.grey[800],
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  )
                                ])),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: 'TROTE\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                      text: '20 min.\n',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(
                                      text: 'velocidad 5',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ])),
                        ),
                      ],
                    )),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => VideoTile(
                                      ytid: 'T9dJ_cE5Asw',
                                      text: "Sentadillas",
                                      text1: "6-8 resps",
                                      text2: 'rest 30"',
                                      text3: "4 sets",
                                    )));
                          },
                          child: TrainingTile(
                            alpha1: 'A1',
                            alpha2: 'A2',
                            text: 'Sentadillas',
                            text1: '6-8 resps',
                            text2: 'rest 30”',
                            text3: '4 sets',
                            texta: 'Desplantes',
                          )),
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => VideoTile(
                                      ytid: 'T9dJ_cE5Asw',
                                      text: "Sentadillas",
                                      text1: "6-8 resps",
                                      text2: 'rest 30"',
                                      text3: "4 sets",
                                    )));
                          },
                          child: TrainingTile(
                            alpha1: 'B1',
                            alpha2: 'B2',
                            text: 'ABS',
                            text1: '6-8 resps',
                            text2: 'rest 30”',
                            text3: '4 sets',
                            texta: 'Tijeras',
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
