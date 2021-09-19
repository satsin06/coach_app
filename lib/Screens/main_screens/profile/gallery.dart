
import 'package:coach_app/Screens/main_screens/profile/modification_subscription.dart';
import 'package:coach_app/Screens/main_screens/profile/setting.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';

class Gallery extends StatelessWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
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
          )
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text("GALERÍA",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ),
                  Container(
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: 25,
              child: RichText(
                  text: TextSpan(
                      text: 'CHECA TU ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w800),
                      children: [
                        TextSpan(
                          text: 'PROGRESO',
                          style: TextStyle(
                              color: Color(0xff6EAD7A),
                              fontSize: 25,
                              fontWeight: FontWeight.w800),
                        )
                      ])),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 250,
                          width: 148,
                          child: Center(
                            child: Text("gallery Image",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.white
                            ),),
                          ),
                        ),
                        Container(
                          child: Text("Date"),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Container(
                    width: 148,
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 250,
                          //width: 140,
                          child: Center(
                            child: Text("gallery Image",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.white
                              ),),
                           ),
                        ),
                        Container(
                          child: Text("Date"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                },
                child: Container(
                  padding: EdgeInsets.all(30),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.camera_enhance_rounded, size: 60,),
                        SizedBox(height: 5,),
                        Container(
                          child: Text("Subir Foto",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
