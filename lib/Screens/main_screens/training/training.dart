import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/Screens/main_screens/home/home_screen.dart';
import 'package:coach_app/widget/calender_strip.dart';
import 'package:coach_app/widget/training_tile.dart';
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
                      CalenderStrip(16, "Lu", true),
                      CalenderStrip(17, "Ma", false),
                      CalenderStrip(18, "Mi", false),
                      CalenderStrip(19, "Ju", false),
                      CalenderStrip(20, "Vi", false),
                      CalenderStrip(21, "Sa", false),
                      CalenderStrip(22, "Do", false),
                      CalenderStrip(23, "Do", false),
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
                      TrainingTile(alpha1: 'A1', alpha2: 'A2', text: 'Sentadillas', text1: '6-8 resps', text2: 'rest 30”', text3: '4 sets', texta: 'Desplantes',),
                      TrainingTile(alpha1: 'B1', alpha2: 'B2', text: 'ABS', text1: '6-8 resps', text2: 'rest 30”', text3: '4 sets', texta: 'Tijeras',),
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

