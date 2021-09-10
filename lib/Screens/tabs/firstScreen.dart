import 'package:coach_app/Screens/tabs/secondScreen.dart';
import 'package:flutter/material.dart';

class FirstTabScreen extends StatelessWidget {
  const FirstTabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff222220),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                '¿Cuál es tu género?',
                style: TextStyle(
                  color: Color(0xff627674),
                  fontSize: 36,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Image.asset(
              'assets/images/tab1.PNG',
              height: 350.0,
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'FEMENINO',
                    style: TextStyle(
                        color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.0, color: Color(0xff79dd72),),
                    primary: Colors.transparent,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                    textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'MASCULINO',
                    style: TextStyle(
                        color: Color(0xff79dd72), fontWeight: FontWeight.normal),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(width: 2.0, color: Color(0xff79dd72),),
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
                DefaultTabController.of(context)!.animateTo(1);
              },
              child: Text('CONTINUAR', style: TextStyle(color: Color(0xff627674), fontWeight: FontWeight.normal),),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff79dd72),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                textStyle:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
