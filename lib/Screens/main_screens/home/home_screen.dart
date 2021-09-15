import 'package:coach_app/Screens/main_screens/home/butt_challenge_exersise.dart';
import 'package:coach_app/widget/calender_strip.dart';
import 'package:coach_app/widget/home_tile.dart';
import 'package:coach_app/widget/progress_bar.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {

                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(15)),
                            side: BorderSide(
                              color: Colors.green.shade500,
                              width: 2.5,
                            )),
                        child: Text(
                          "MI RENDIMIENTO",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        )),
                  ),
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalenderStrip(16,"Lu", true),
                      CalenderStrip(17,"Ma", false),
                      CalenderStrip(18,"Mi", false),
                      CalenderStrip(19,"Ju", false),
                      CalenderStrip(20,"Vi", false),
                      CalenderStrip(21,"Sa", false),
                      CalenderStrip(22,"Do", false),
                      CalenderStrip(23,"Lu", false),
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
              Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProgressBar(
                          max: 100, current: 4
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text(
                            "1/30 DÍAS DE PLAN",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      ),
                    ],
                  )
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(15)),
                            side: BorderSide(
                              color: Colors.grey,
                              width: 2.5,
                            )),
                        child: Text(
                          "RETOS 30 DÍAS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        InkWell(onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ButtChallengeExercise()));
                        },
                          child: HomeTile(
                            img: Image.asset("assets/image1.png",width: 90,
                              //height: double.infinity,
                              fit: BoxFit.fill,
                            ),title: "SENTADILLAS",),
                        ),
                        HomeTile(
                          img: Image.asset("assets/image2.png",width: 90,
                            //height: double.infinity,
                            fit: BoxFit.fill,
                          ),title: "ABS CHALLENGE",),
                        HomeTile(
                          img: Image.asset("assets/image3.png",width: 90,
                            //height: double.infinity,
                            fit: BoxFit.fill,
                          ),title: "GLÚTEO",),
                      ],
                    ),
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