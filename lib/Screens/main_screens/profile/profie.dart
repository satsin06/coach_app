import 'dart:io';
import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:coach_app/Screens/main_screens/profile/alarm_temp.dart';
import 'package:coach_app/Screens/main_screens/profile/edit_profile.dart';
import 'package:coach_app/Screens/main_screens/profile/gallery.dart';
import 'package:coach_app/Screens/main_screens/profile/manage_notifications.dart';
import 'package:coach_app/Screens/main_screens/profile/modification_subscription.dart';
import 'package:coach_app/Screens/main_screens/profile/plan_nutrition.dart';
import 'package:coach_app/Screens/main_screens/profile/setting.dart';
import 'package:coach_app/Screens/splash_screen.dart';
import 'package:coach_app/model/user_data.dart';
import 'package:coach_app/widget/profile_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../../custom_icons_icons.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? image;
  final picker = ImagePicker();
  User? user = FirebaseAuth.instance.currentUser;
  UserData loggedInUser = UserData();
  
  Future pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imagePermanent = await saveImagePermanently();
    setState(() {
      this.image = imagePermanent;
    } on PlatformException catch (e) {

    }
    );
  }

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserData.fromMap(value.data());
      setState(() {});
    });
  }


  FirebaseAuth _auth = FirebaseAuth.instance;
  List<File> capturedImages = [];
  final cameras = availableCameras();


  void signOut() async {
    await _auth.signOut();
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => SplashScreen()), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset("assets/appbar.png",
          height: 25,
          fit: BoxFit.cover,),
        centerTitle: true,
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
                        IconButton(
                              icon: Icon(CustomIcons.profile_edit,
                                size: 28,),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfile()));
                              }
                            ),
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
                        GestureDetector(
                          onTap: () {
                           pickImage();
                          },
                          child: CircleAvatar(
                            radius: 55,
                            child: image != null
                                ? ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.file(
                                image!,
                                width: 110,
                                height: 110,
                                fit: BoxFit.cover,
                              ),
                            )
                                : Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(50)),
                              width: 100,
                              height: 100,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${loggedInUser.name}",
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
                              "${loggedInUser.email}",
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
                      "${loggedInUser.country}",
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
                        builder: (context) => Alarm(),
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
                            height: MediaQuery.of(context).size.height * 0.45,
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text(
                                              "Comentarios y Sugerencias",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
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
                            height: MediaQuery.of(context).size.height * 0.45,
                            child: Column(
                              children: [
                                Container(
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          child: Text("Reportar un Problema",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
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
                                          child: Text("Términos y Condiciones",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.normal),
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
                                          child: Text(
                                            "Políticas de Privacidad",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.normal),
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
                onPressed: signOut,
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
