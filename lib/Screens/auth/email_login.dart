import 'package:coach_app/Screens/auth/signup.dart';
import 'package:coach_app/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmailLogin extends StatelessWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController =TextEditingController();
    final TextEditingController passwordController =TextEditingController();

    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      backgroundColor: Color(0xff222220),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: [
                Text(
                  'Regístrate',
                  style: TextStyle(
                      color: Color(0xff79dd72),
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                TextField(
                  controller: emailController,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: '  Correo Electrónico',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                TextFormField(
                  controller: passwordController,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    // border: UnderlineInputBorder(
                    // ),
                    labelText: '  Contraseña',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  obscureText: true,
                ),
                // SizedBox(height: MediaQuery.of(context).size.height * 0.4,),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
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
