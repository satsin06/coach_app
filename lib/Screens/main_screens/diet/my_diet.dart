import 'package:coach_app/Screens/main_screens/diet/database.dart';
import 'package:coach_app/widget/my_diet_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import '../../../custom_icons_icons.dart';
import '../bottom_bar.dart';

class MyDiet extends StatelessWidget {
  const MyDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              CustomIcons.profile_edit,
              size: 28,
              color: Colors.black,
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
        title: RichText(
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
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  Text(
                    'Lunes 18 agosto',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '508\nconsumidas',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Stack(children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey[350],
                        child: CircleAvatar(
                          radius: 68,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(44, 52, 0, 0),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '1300\n',
                            style: TextStyle(
                              color: Color(0xff79dd72),
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: 'Kcal rest.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff79dd72),
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]
                          ),
                        )
                      )
                    ]),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 30,
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'CARBS\n137g /300g',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'PROTE\n28g /62g',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'GRASAS\n20g /40g',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              MyDietTile(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                      },
                      child: Text(
                        "INSTRUCCIONES",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15)),
                          side: BorderSide(
                            color: Color(0xff79dd72),
                            width: 3,
                          )),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DataBase()));
                      },
                      child: Text(
                        "NOTIFICACIONES",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(15)),
                          side: BorderSide(
                            color: Color(0xff79dd72),
                            width: 3,
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
