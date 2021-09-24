import 'package:coach_app/Screens/tabs/fourthScreen.dart';
import 'package:coach_app/widget/tab_status.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';

class ThirdTabScreen extends StatelessWidget {
  const ThirdTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222220),
        body: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabStatus(
                color1: Color(0xff79dd72),
                color2: Color(0xff79dd72),
                color3: Color(0xff79dd72),
                color4: Colors.white,
                color5: Colors.white,
                color6: Colors.white,
              ),
              Column(
                children: [
                  Icon(Icons.keyboard_return, color: Color(0xff79dd72), size: 72,),
                  Center(
                    child: Text(
                      '¿Cuál es tu condición?',
                      style: TextStyle(
                        color: Color(0xff627674),
                        fontSize: 36,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ],
              ),
              Icon(CustomIcons.tab3, color: Color(0xff79dd72), size: 180,),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'PRINCIPIANTE',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff79dd72),
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'INTERMEDIO',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff79dd72),
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'AVANZADO',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                      side: BorderSide(
                        width: 2.0,
                        color: Color(0xff79dd72),
                      ),
                      primary: Colors.transparent,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  DefaultTabController.of(context)!.animateTo(3);
                },
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'CONTINUAR',
                    maxLines: 1,
                    style: TextStyle(
                        color: Color(0xff627674), fontWeight: FontWeight.normal),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                  primary: Color(0xff79dd72),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(),
              Container(),
            ],
          ),
        ));
  }
}
