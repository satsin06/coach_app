import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:coach_app/Screens/main_screens/home/exercise_date.dart';
import 'package:coach_app/Screens/main_screens/home/my_performance.dart';
import 'package:coach_app/Screens/test.dart';
import 'package:coach_app/widget/home_tile.dart';
import 'package:coach_app/widget/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override

  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  DateTime timeBackPressed = DateTime.now();
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 5));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return WillPopScope(
      onWillPop: () async {
        final difference = DateTime.now().difference(timeBackPressed);
        final isExitWarning = difference >= Duration(seconds: 2);

        timeBackPressed = DateTime.now();

        if (isExitWarning) {
          final message = 'Press back again to exit';
          Fluttertoast.showToast(msg: message, fontSize: 18);
          return false;
        } else {
          Fluttertoast.cancel();
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Image.asset("assets/appbar.png",
          height: 25,
          fit: BoxFit.cover,)
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyPerformance()));
                          },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.circular(15)),
                              side: BorderSide(
                                color: Color(0xff79dd72),
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
                Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProgressBar(
                            max: 100, current: 6
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ExerciseDate()));
                          },
                            child: HomeTile(
                              img: Image.asset("assets/image1.png",width: 90,
                                //height: double.infinity,
                                fit: BoxFit.fill,
                              ),title: "SENTADILLAS",),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Test()));
                            },
                            child: HomeTile(
                              img: Image.asset("assets/image2.png",width: 90,
                                //height: double.infinity,
                                fit: BoxFit.fill,
                              ),title: "ABS CHALLENGE",),
                          ),
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
      ),
    );
  }
}
