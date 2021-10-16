import 'package:coach_app/Screens/auth/phone_auth.dart';
import 'package:coach_app/services/auth_wrapper.dart';
import 'package:flutter/material.dart';


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
                  Expanded(
                    child:  Image.asset(
                      'assets/images/homescreen.png',
                      width: 600.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
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
                        .push(MaterialPageRoute(builder: (context) => AuthWrapper()));
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneAuth()));
                    },
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
