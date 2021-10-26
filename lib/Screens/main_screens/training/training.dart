import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/widget/training_tile.dart';
import 'package:coach_app/widget/video_tile.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:ui';

import '../../../custom_icons_icons.dart';

class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {
  late final List<bool> isSelected;

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
        title: Image.asset("assets/appbar.png",
          height: 25,
          fit: BoxFit.cover,),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) => BottomBar()));
                        },
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
              CalendarTimeline(
                initialDate: DateTime.now(),
                firstDate: DateTime(2019, 1, 15),
                lastDate: DateTime(2030, 12, 31),
                onDateSelected: (date) => print(date),
                leftMargin: 20,
                monthColor: Colors.blueGrey,
                dayColor: Colors.black45,
                activeDayColor: Colors.black,
                activeBackgroundDayColor: Color(0xff79dd72),
                dotsColor: Color(0xFF333A47),
                //selectableDayPredicate: (date) => date.day != 23,
                locale: 'es_MX',
              ),
              SizedBox(
                height: 20,
              ),
              Text('Selecciona tu lugar de entrenamiento', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: ToggleSwitch(
                  minWidth: MediaQuery.of(context).size.width,
                  cornerRadius: 20.0,
                  activeBgColor: [Color(0xff79dd72)],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  animate: true,
                  dividerColor: Colors.black,
                  borderColor: [Colors.green],
                  fontSize: 24,
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: ['En CASA', 'EN GYM'],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
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