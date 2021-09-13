import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../custom_icons_icons.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  'COACH APP',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                      fontFamily: 'GeometricSlab'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(27, 13, 0, 0),
                  child: Icon(
                    CustomIcons.name,
                    color: Color(0xff79dd72),
                    size: 6,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(88, 5, 0, 0),
                  child: Icon(
                    CustomIcons.flash,
                    color: Color(0xff79dd72),
                    size: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      RichText(
                          text: TextSpan(
                              text: 'MI',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800),
                              children: [
                                TextSpan(
                                  text: 'PERFIL',
                                  style: TextStyle(
                                      color: Color(0xff6EAD7A),
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                )
                              ])),
                      Icon(Icons.edit)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 40,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('JASON', style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text('Usuario premium', style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),),
                            Text('correo', style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w100
                            ),)
                          ],
                        )
                      ],
                    ),
                    Icon(Icons.badge)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('País', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                    Text('México', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Administrar notificaciones', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Plan nutricional', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Galería de fotos', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Modificar Suscripción', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Ajustes', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Comentarios y sugerencias', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Reportar un problema', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Términos y condiciones', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Políticas de privacidad', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal
                    ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 40,),
              ElevatedButton(onPressed: (){}, child: Text('CERRAR SESIÓN', style: TextStyle(
                color: Colors.black38, fontSize: 24,
              ),
              ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color(0xff79dd72), width: 2),
                        borderRadius: BorderRadius.circular(50))),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
