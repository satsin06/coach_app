import 'package:coach_app/Screens/auth/email_login.dart';
import 'package:coach_app/Screens/auth/signup.dart';
import 'package:coach_app/Screens/main_screens/bottom_bar.dart';
import 'package:coach_app/custom_icons_icons.dart';
import 'package:coach_app/services/auth_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Icon(CustomIcons.flash, color: Color(0xff79dd72), size: 160,),
                )
              ),
              SizedBox(height: 10,),
              Text(
                "¡Tu plan está listo!\nConócelo.",
                style: TextStyle(
                  color: Color(0xff79dd72),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.email_outlined,
                  color: Colors.black,
                  size: 24,
                ),
                label: Text(
                  'Accede con tu email',
                  style: TextStyle(
                      color: Color(0xff627674),
                      fontWeight: FontWeight.w300,
                      fontSize: 24),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AuthWrapper()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff79dd72),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 55, vertical: 10),
                  textStyle:
                  TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton.icon(
                icon: Icon(
                  MdiIcons.apple,
                  color: Colors.black,
                  size: 24,
                ),
                label: Text(
                  'Continuar con Apple',
                  style: TextStyle(
                      color: Color(0xff76bcd4),
                      fontWeight: FontWeight.w300,
                      fontSize: 24),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffffffff),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                icon: Icon(
                  MdiIcons.facebook,
                  color: Colors.white,
                  size: 24,
                ),
                label: Text(
                  'Acceder con Facebook',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 24),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                icon: Icon(
                  MdiIcons.google,
                  color: Colors.red,
                  size: 24,
                ),
                label: Text(
                  'Accede con tu email',
                  style: TextStyle(
                      color: Color(0xff627674),
                      fontWeight: FontWeight.w300,
                      fontSize: 24),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomBar()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '¿Ya tienes cuenta?',
                style: TextStyle(
                    color: Color(0xff79dd72),
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              SizedBox(height: 15,),
              TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => SignUpPage()));
                  },
                  child: Text(
                    'INICIA SESIÓN',
                    style: TextStyle(
                        color: Color(0xff76bcd4),
                        fontWeight: FontWeight.normal,
                        fontSize: 36),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
