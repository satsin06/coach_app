import 'package:coach_app/custom_icons_icons.dart';
import 'package:coach_app/widget/tab_status.dart';
import 'package:flutter/material.dart';

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({Key? key}) : super(key: key);

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
                color2: Colors.white,
                color3: Colors.white,
                color4: Colors.white,
                color5: Colors.white,
                color6: Colors.white,
              ),
              Center(
                child: Text(
                  '¿Cuál es tu género?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              Icon(
                CustomIcons.tab1,
                color: Color(0xff79dd72),
                size: 180,
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'FEMENINO',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72),
                            fontWeight: FontWeight.normal),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'MASCULINO',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72),
                            fontWeight: FontWeight.normal),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  DefaultTabController.of(context)!.animateTo(1);
                },
                child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'CONTINUAR',
                      maxLines: 1,
                      style: TextStyle(
                          color: Color(0xff627674),
                          fontWeight: FontWeight.normal),
                    )),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(MediaQuery.of(context).size.width * 0.7),
                  primary: Color(0xff79dd72),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container()
            ],
          ),
        ));
  }
}
