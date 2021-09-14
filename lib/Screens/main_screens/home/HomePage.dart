import 'package:coach_app/model/Hometile.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        onPressed: () {},
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
                      CalenderStrip(23,"Do", false),
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
                          max: 100, current: 13
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
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Home3(),
                            ),
                          );
                        },
                        child: Hometile(
                          img: Image.asset("assets/image1.png",width: 90,
                            height: double.infinity,
                            fit: BoxFit.fill,
                            ),title: "SENTADILLAS",),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => Home2calender(),
                          //   ),
                          // );
                        },
                        child: Hometile(
                          img: Image.asset("assets/image2.png",width: 90,
                            height: double.infinity,
                            fit: BoxFit.fill,
                            ),title: "ABS CHALLENGE",),
                      ),
                      InkWell(
                        // onTap: () {
                        //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home3()));
                        // },
                        child: Hometile(
                          img: Image.asset("assets/image3.png",width: 90,
                            height: double.infinity,
                            fit: BoxFit.fill,
                            ),title: "GLÚTEO",),
                      )
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

//calender design on home screen
Container CalenderStrip(int date,String weekDay, bool isActive) {
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
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Container(
            height: 33,
            width: 33,
            decoration: isActive
                ? BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.circle,
              color: Color(0xff6EAD7A),)
                : BoxDecoration(),
            child: Center(
              child: Text(
                date.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                fontSize: 15),
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


//progress bar on home screen
class ProgressBar extends StatelessWidget {
  final double max;
  final double current;
  final Color color;

  const ProgressBar(
      {Key? key,
        required this.max,
        required this.current,
        this.color = Colors.green})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, boxConstraints) {
        var x = boxConstraints.maxWidth;
        var percent = (current / max) * x;
        return Stack(
          children: [
            Container(
              width: x,
              height: 13,
              decoration: BoxDecoration(
                color: Color(0xffd3d3d3),
                borderRadius: BorderRadius.circular(35),
              ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: percent,
              height: 13,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(35),
              ),
            ),
          ],
        );
      },
    );
  }
}