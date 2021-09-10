import 'package:coach_app/Screens/tabs/tabscreens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/homescreen.png',
              width: 600.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Text(
              "Al continuar, aceptas nuestras políticas de privacidad, términos de uso\ny términos de suscripción",
              style: TextStyle(color: Color(0xff647d78), fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TaberScreen()));
              },
              child: Text(
                'EMPEZAR',
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                      color: Color(0xff79dd72),
                      fontWeight: FontWeight.w100,
                      fontSize: 24),
                ))
          ],
        ),
      ),
    );
  }
}
