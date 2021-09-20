import 'package:coach_app/Screens/main_screens/profile/gallery.dart';
import 'package:coach_app/Screens/main_screens/profile/manage_notifications.dart';
import 'package:coach_app/Screens/main_screens/profile/modification_subscription.dart';
import 'package:coach_app/Screens/main_screens/profile/plan_nutrition.dart';
import 'package:coach_app/Screens/main_screens/profile/setting.dart';
import 'package:coach_app/services/auth_service.dart';
import 'package:coach_app/widget/profile_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../../custom_icons_icons.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                        Icon(
                          CustomIcons.profile_edit,
                          size: 28,
                        )
                      ],
                    ),
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
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'JASON',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Usuario premium',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'correo',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w100),
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      CustomIcons.badge,
                      color: Color(0xff79dd72),
                      size: 44,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'País',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'México',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              profileTileWithTrailing(
                  title: 'Administrar notificaciones',
                  icon: Icons.arrow_forward_ios,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ManageNotifications(),
                      ),
                    );
                  },
                  context: context),
              profileTileWithTrailing(
                  title: 'Plan nutricional',
                  icon: Icons.arrow_forward_ios,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PlanNutrition(),
                      ),
                    );
                  },
                  context: context),
              profileTileWithTrailing(
                  title: 'Galería de fotos',
                  icon: Icons.arrow_forward_ios,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Gallery(),
                      ),
                    );
                  },
                  context: context),
              profileTileWithTrailing(
                  title: 'Modificar Suscripción',
                  icon: Icons.arrow_forward_ios,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ModificationSubscription(),
                      ),
                    );
                  },
                  context: context),
              profileTileWithTrailing(
                  title: 'Ajustes',
                  icon: Icons.arrow_forward_ios,
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Setting(),
                      ),
                    );
                  },
                  context: context),
              profileTile(
                  title: 'Comentarios y sugerencias',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 16,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child:
                                              Text("Comentarios y Sugerencias", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.cancel_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nos interesa tu opinión'),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.green,
                                    ),
                                    child: Center(
                                        child: Container(
                                            child: Text('Enviar Comentario'))),
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) => PlanNutrition(),
                                    //   ),
                                    // );
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  context: context),
              profileTile(
                  title: 'Reportar un problema',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 16,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.35,
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text("Reportar un Problema", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.cancel_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Cuéntanos ¿Cuál es el problema?'),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                InkWell(
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.green,
                                    ),
                                    child: Center(
                                        child:
                                            Container(child: Text('Enviar'))),
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) => PlanNutrition(),
                                    //   ),
                                    // );
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  context: context),
              profileTile(
                  title: 'Términos y condiciones',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 16,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text("Términos y Condiciones", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.cancel_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.height *
                                            0.15,
                                    width: MediaQuery.of(context).size.width *
                                        0.8,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
                                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                InkWell(
                                  child: Container(
                                    height: 30,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.green,
                                    ),
                                    child: Center(
                                        child:
                                            Container(child: Text('Aceptar'))),
                                  ),
                                  onTap: () {
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(
                                    //     builder: (context) => PlanNutrition(),
                                    //   ),
                                    // );
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  context: context),
              profileTile(
                  title: 'Políticas de privacidad',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 16,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text("Políticas de Privacidad", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            child: Icon(
                                              Icons.cancel_outlined,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                  child: Container(
                                    height:
                                    MediaQuery.of(context).size.height *
                                        0.15,
                                    width: MediaQuery.of(context).size.width *
                                        0.8,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
                                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  context: context),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () async {
                  await authService.signOut();
                },
                child: Text(
                  'CERRAR SESIÓN',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 24,
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
