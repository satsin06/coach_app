import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/Screens/main_screens/home/HomePage.dart';
import 'package:coach_app/Screens/main_screens/training/training2.dart';
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
                                  color: Color(0xff6EAD7A),
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
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      calendarStrip(16, "Lu", true),
                      calendarStrip(17, "Ma", false),
                      calendarStrip(18, "Mi", false),
                      calendarStrip(19, "Ju", false),
                      calendarStrip(20, "Vi", false),
                      calendarStrip(21, "Sa", false),
                      calendarStrip(22, "Do", false),
                      calendarStrip(23, "Do", false),
                      CalenderStrip(24,"Ma", false),
                      CalenderStrip(25,"Mi", false),
                      CalenderStrip(26,"Ju", false),
                      CalenderStrip(27,"Vi", false),
                      CalenderStrip(28,"Sa", false),
                      CalenderStrip(29,"Do", false),
                      CalenderStrip(30,"Lu", false),
                    ],
                  ),
                ),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Stack(children: [
                              Icon(
                                CustomIcons.twocirclestrip,
                                size: 160,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(64, 18, 0, 0),
                                child: Text(
                                  'A1',
                                  style:
                                      TextStyle(fontSize: 32, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(64, 110, 0, 0),
                                child: Text(
                                  'A2',
                                  style:
                                      TextStyle(fontSize: 32, color: Colors.white),
                                ),
                              )
                            ]),
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Training2(),
                                  ),
                                );
                              },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0,24, 40, 0),
                              child: Column(
                                children: [
                                  RichText(
                                      text: TextSpan(
                                          text: 'Sentadillas\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800),
                                          children: [
                                        TextSpan(
                                          text: '6-8 resps\n',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        TextSpan(
                                          text: 'rest 30”\n',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        TextSpan(
                                          text: '4 sets',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ])),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: 'Desplantes\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w800),
                                          children: [
                                        TextSpan(
                                          text: '6-8 resps\n',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        TextSpan(
                                          text: 'rest 30”\n',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        TextSpan(
                                          text: '4 sets',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ])),
                                ],
                              ),
                            )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent.shade700),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(height: 40,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent.shade700),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Stack(children: [
                              Icon(
                                CustomIcons.twocirclestrip,
                                size: 160,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(64, 18, 0, 0),
                                child: Text(
                                  'B1',
                                  style:
                                  TextStyle(fontSize: 32, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(64, 110, 0, 0),
                                child: Text(
                                  'B2',
                                  style:
                                  TextStyle(fontSize: 32, color: Colors.white),
                                ),
                              )
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,24, 40, 0),
                            child: Column(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: 'ABS\n',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800),
                                        children: [
                                          TextSpan(
                                            text: '6-8 resps\n',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          TextSpan(
                                            text: 'rest 30”\n',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          TextSpan(
                                            text: '4 sets',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ])),
                                SizedBox(
                                  height: 20,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: 'Tijeras\n',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800),
                                        children: [
                                          TextSpan(
                                            text: '6-8 resps\n',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          TextSpan(
                                            text: 'rest 30”\n',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          TextSpan(
                                            text: '4 sets',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ])),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 24.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent.shade700),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(height: 40,),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.greenAccent.shade700),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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

Container calendarStrip(int date, String weekDay, bool isActive) {
  return Container(
    height: 55,
    width: 50,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 33,
          width: 33,
          decoration: BoxDecoration(
              //shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff6EAD7A),
                width: 2.5,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Container(
            height: 33,
            width: 33,
            decoration: isActive
                ? BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    //shape: BoxShape.circle,
                    color: Color(0xff6EAD7A),
                  )
                : BoxDecoration(),
            child: Center(
              child: Text(
                date.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ),
          ),
        ),
        Text(
          weekDay,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    ),
  );
}
