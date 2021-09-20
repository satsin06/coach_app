import 'package:coach_app/widget/butt_challenge_tile.dart';
import 'package:coach_app/widget/video_tile.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';


class Exercise extends StatelessWidget {
  const Exercise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
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
                                  text: 'RETO',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                  children: [
                                    TextSpan(
                                      text: 'GLÚTEO',
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
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("EJERCICIOS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18
                        ),),
                    ),
                    Container(
                      child: Text("(20)",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade400,
                            fontSize: 18
                        ),),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  child: Column(
                    children: [
                      InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoTile(ytid: 'T9dJ_cE5Asw', text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)));
                      },child: ButtChallengeTile(img: Image.asset("assets/home3.png",height: 80,fit: BoxFit.fill,),text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)),
                      InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoTile(ytid: 'OeYnV9zp7Dk', text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)));
                      },child: ButtChallengeTile(img: Image.asset("assets/home3_1.png",height: 80,fit: BoxFit.fill,),text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)),
                      InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoTile(ytid: 'AaZ_RSt0KP8', text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)));
                      },child: ButtChallengeTile(img: Image.asset("assets/home3_2.png",height: 80,fit: BoxFit.fill,),text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)),
                      InkWell(onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => VideoTile(ytid: '094y1Z2wpJg', text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",)));
                      },child: ButtChallengeTile(img: Image.asset("assets/home3_3.png",height: 80,fit: BoxFit.fill,),text: "Donkey Kicks",text1: "6-8 resps",text2: 'rest 30"',text3: "4 sets",))
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff79dd72),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(15)),
                            // side: BorderSide(
                            //   color: Colors.green.shade500,
                            //   width: 2.5,
                            // )
                          ),
                          child: Text(
                            "TERMINADO",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              //fontWeight: FontWeight.w800
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
