import 'package:coach_app/model/home3list.dart';
import 'package:flutter/material.dart';

import 'home4.dart';


class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/appbar.png',
              width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.height*0.05,)),
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
            Container(
              height: 90,
              color: Colors.grey.shade400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Container(
                      height: 90,
                      padding: EdgeInsets.fromLTRB(0, 15, 40, 15),
                      child: Column(
                        children: [
                          Container(
                            child: Text("Calentamiento",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text("20 MIN",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(40, 10, 0, 10),
                      child: Column(
                        children: [
                          Container(
                            child: Text("TROTE",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Container(
                            child: Text("20 min.",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                          Container(
                            child: Text("velocidad 5",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(110, 0, 0, 0),
                  child: Row(
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
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home4(),
                        ),
                      );
                    },
                      child: Hometile3(
                        img: Image.asset(
                          "assets/home3.png",
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                        text: "Donkey Kicks",
                        text1: "6-8 resps",
                        text2: 'rest 30"',
                        text3: "4 sets",)),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Hometile3(
                      img: Image.asset(
                        "assets/home3_1.png",
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      text: "Donkey Kicks",
                      text1: "6-8 resps",
                      text2: 'rest 30"',
                      text3: "4 sets",),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Hometile3(
                      img: Image.asset(
                        "assets/home3_2.png",
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      text: "Donkey Kicks",
                      text1: "6-8 resps",
                      text2: 'rest 30"',
                      text3: "4 sets",),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: () {},
                    child: Hometile3(
                      img: Image.asset(
                        "assets/home3_3.png",
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      text: "Donkey Kicks",
                      text1: "6-8 resps",
                      text2: 'rest 30"',
                      text3: "4 sets",),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Home4(),
                              ),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade500,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15)),
                          // side: BorderSide(
                          //   color: Colors.green.shade500,
                          //   width: 2.5,
                          // )
                          ),
                      child: Text(
                        "INICO",
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
