import 'package:coach_app/Screens/tabs/thirdScreen.dart';
import 'package:flutter/material.dart';

import '../../custom_icons_icons.dart';

class SecondTabScreen extends StatelessWidget {
  const SecondTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222220),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                'Elige tu objetivo',
                style: TextStyle(
                  color: Color(0xff627674),
                  fontSize: 36,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Icon(CustomIcons.tab2, color: Color(0xff79dd72), size: 180,),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'PERDER GRASA',
                    style: TextStyle(
                        color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                  ),
                  style: ElevatedButton.styleFrom(
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
                  child: Text(
                    'MANTENIMIENTO',
                    style: TextStyle(
                        color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                  ),
                  style: ElevatedButton.styleFrom(
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
                  child: Text(
                    'AUMENTAR MÚSCULO',
                    style: TextStyle(
                        color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                  ),
                  style: ElevatedButton.styleFrom(
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
                DefaultTabController.of(context)!.animateTo(2);
              },
              child: Text(
                'CONTINUAR',
                style: TextStyle(
                    color: Color(0xff627674), fontWeight: FontWeight.normal),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff79dd72),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(),
          ],
        ));
  }
}
