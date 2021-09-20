import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../../custom_icons_icons.dart';


bool isChecked = false;
bool isChecked1 = false;
bool isChecked2 = false;


class ManageNotifications extends StatefulWidget {
  const ManageNotifications({Key? key}) : super(key: key);

  @override
  State<ManageNotifications> createState() => _ManageNotificationsState();
}

class _ManageNotificationsState extends State<ManageNotifications> {
  String _selectedTime = "02:00 am";
  String _selectedTime2 = "08:00 am";
  String _selectedTime3 = "02:00 am";

  Future<void> _show() async {
    final TimeOfDay? result =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }
  Future<void> _show2() async {
    final TimeOfDay? result =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime2 = result.format(context);
      });
    }
  }
  Future<void> _show3() async {
    final TimeOfDay? result =
    await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (result != null) {
      setState(() {
        _selectedTime3 = result.format(context);
      });
    }
  }

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    ),
                    Container(),
                  ],
                ),
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
                                  onPressed: _show,
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
                                  _selectedTime,
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
                            value: isChecked,
                            onToggle: (value) {
                              print(value);
                              setState(() {
                                isChecked = value;
                              });
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
                                      onPressed: _show2,
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
                                        _selectedTime2,
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
                                  value: isChecked1,
                                  onToggle: (value) {
                                    print(value);
                                    setState(() {
                                      isChecked1 = value;
                                    });
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
                                      onPressed: _show3,
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
                                        _selectedTime3,
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
                                  value: isChecked2,
                                  onToggle: (value) {
                                    print(value);
                                    setState(() {
                                      isChecked2 = value;
                                    });
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





