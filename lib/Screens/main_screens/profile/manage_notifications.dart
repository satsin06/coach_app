import 'package:coach_app/Screens/main_screens/profile/gallery.dart';
import 'package:coach_app/Screens/main_screens/profile/plan_nutrition.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../custom_icons_icons.dart';


bool isChecked = false;


class ManageNotifications extends StatelessWidget {
  const ManageNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
        )
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 70),
                    child: Column(
                      children: [
                        Text("ADMINISTRAR",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("NOTIFICACIONES",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold
                          ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(40),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10,),
                  Container(
                    child: Text("Alarmas",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    //color: Colors.grey,
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            child: Text("Hora",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey.shade600,

                            ),),
                          ),
                        ),
                        Column(
                          children: [
                            //SizedBox(height: 5),
                            Container(
                              padding: EdgeInsets.all(10),
                            //height: 30,
                            child: Container(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(15)),
                                      side: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      )),
                                  child: Text(
                                    "2:00 am",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w800),
                                  )),
                            ),
                          ),
                        Container(
                          //height: 30,
                          child: FlutterSwitch(
                            height: 30.0,
                            width: 60.0,
                            padding: 4.0,
                            toggleSize: 20.0,
                            borderRadius: 20.0,
                            activeColor: Colors.green,
                            value: true,
                            onToggle: (value) {
                              print("click");
                            },
                          ),
                        )
                          ])
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            child: Text("Hora Comida",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade600,

                              ),),
                          ),
                        ),
                        Column(
                            children: [
                              //SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.all(10),
                                //height: 30,
                                child: Container(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(15)),
                                          side: BorderSide(
                                            color: Colors.grey,
                                            width: 2,
                                          )),
                                      child: Text(
                                        "8:00 am",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                      )),
                                ),
                              ),
                              Container(
                                //height: 30,
                                child: FlutterSwitch(
                                  height: 30.0,
                                  width: 60.0,
                                  padding: 4.0,
                                  toggleSize: 20.0,
                                  borderRadius: 20.0,
                                  activeColor: Colors.green,
                                  value: false,
                                  onToggle: (value) {
                                    print("click");
                                  },
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.grey,
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Container(
                            child: Text("Ejercicio",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey.shade600,

                              ),),
                          ),
                        ),
                        Column(
                            children: [
                              //SizedBox(height: 5),
                              Container(
                                padding: EdgeInsets.all(10),
                                //height: 30,
                                child: Container(
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(15)),
                                          side: BorderSide(
                                            color: Colors.grey,
                                            width: 2,
                                          )),
                                      child: Text(
                                        "8:00 am",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w800),
                                      )),
                                ),
                              ),
                              Container(
                                //height: 30,
                                child: FlutterSwitch(
                                  height: 30.0,
                                  width: 60.0,
                                  padding: 4.0,
                                  toggleSize: 20.0,
                                  borderRadius: 20.0,
                                  activeColor: Colors.green,
                                  value: false,
                                  onToggle: (value) {
                                    print("click");
                                  },
                                ),

                              )
                            ])
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap:  () {
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
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Text("Nueva Alarma"),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Container(
                                              child: Icon(Icons.cancel_outlined,
                                              color: Colors.grey,),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10,),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Fijar nombre',
                                                  style: TextStyle(
                                                      color: Colors.grey.shade600
                                                  )),
                                              Container(
                                                height: 30,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    border: Border.all(color: Colors.grey)),
                                                child: Center(child: Container(child: Text('Ayuno'))),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text('Fijar hora',
                                                  style: TextStyle(
                                                      color: Colors.grey.shade600
                                                  )),
                                              Container(
                                                height: 30,
                                                width: 100,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10.0),
                                                    border: Border.all(color: Colors.grey)),
                                                child: Center(child: Container(child: Text('6:00 am'))),
                                              )
                                            ],
                                          ),
                                        )
                                        ])
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
                                          child: Container(child: Text('Agregar Alarma'))),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PlanNutrition(),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                            child: Icon(Icons.add,
                              size: 30,
                              color: Colors.green,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text("Agregar Alarma",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600
                            ),),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





