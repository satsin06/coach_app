import 'package:coach_app/Screens/tabs/tabscreens.dart';
import 'package:flutter/material.dart';

import '../custom_icons_icons.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Stack(
                          children: [
                            Text(
                              'COACH',
                              style: TextStyle(
                                  fontSize: 68,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'GeometricSlab'),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(57, 28, 0, 0),
                              child: Icon(
                                CustomIcons.name,
                                color: Color(0xff79dd72),
                                size: 12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Icon(
                        CustomIcons.flash,
                        color: Color(0xff79dd72),
                        size: 60,
                      ),
                      Text(
                        'APP',
                        style: TextStyle(
                            fontSize: 68,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'GeometricSlab',
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "Tu plan de entrenamiento\ny dieta personalizado",
                    style: TextStyle(
                      color: Color(0xff79dd72),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  "Al continuar, aceptas nuestras políticas de privacidad, términos de uso\ny términos de suscripción",
                  style: TextStyle(color: Color(0xff647d78), fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => TaberScreen()));
                  },
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      'EMPEZAR',
                      maxLines: 1,
                      style: TextStyle(
                          color: Color(0xff627674), fontWeight: FontWeight.normal),
                    ),
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
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        'INICIAR SESIÓN',
                        maxLines: 1,
                        style: TextStyle(
                            color: Color(0xff79dd72),
                            fontWeight: FontWeight.w100,
                            fontSize: 24),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
