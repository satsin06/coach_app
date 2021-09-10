import 'package:coach_app/Screens/tabs/fourthScreen.dart';
import 'package:flutter/material.dart';

class ThirdTabScreen extends StatelessWidget {
  const ThirdTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222220),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
            Image.asset(
              'assets/images/tab3.PNG',
              height: 350.0,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'PRINCIPIANTE',
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
                    'INTERMEDIO',
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
                    'AVANZADO',
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
                DefaultTabController.of(context)!.animateTo(3);
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
            Container()
          ],
        ));
  }
}
