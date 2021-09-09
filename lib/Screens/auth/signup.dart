import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                TextFormField(
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),
                      labelText: '  Nombre',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                TextFormField(
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
            onPressed: () {},
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
        ],
      ),
    );
  }
}
