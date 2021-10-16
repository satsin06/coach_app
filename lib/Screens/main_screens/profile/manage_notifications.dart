/// DEMO CODE

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_switch/flutter_switch.dart';
//
// import '../../../custom_icons_icons.dart';
//
//
// bool isChecked = false;
// bool isChecked1 = false;
// bool isChecked2 = false;
//
//
// class ManageNotifications extends StatefulWidget {
//   const ManageNotifications({Key? key}) : super(key: key);
//
//   @override
//   State<ManageNotifications> createState() => _ManageNotificationsState();
// }
//
// class _ManageNotificationsState extends State<ManageNotifications> {
//   String _selectedTime = "02:00 am";
//   String _selectedTime2 = "08:00 am";
//   String _selectedTime3 = "02:00 am";
//
//   Future<void> _show() async {
//     final TimeOfDay? result =
//     await showTimePicker(context: context, initialTime: TimeOfDay.now());
//     if (result != null) {
//       setState(() {
//         _selectedTime = result.format(context);
//       });
//     }
//   }
//   Future<void> _show2() async {
//     final TimeOfDay? result =
//     await showTimePicker(context: context, initialTime: TimeOfDay.now());
//     if (result != null) {
//       setState(() {
//         _selectedTime2 = result.format(context);
//       });
//     }
//   }
//   Future<void> _show3() async {
//     final TimeOfDay? result =
//     await showTimePicker(context: context, initialTime: TimeOfDay.now());
//     if (result != null) {
//       setState(() {
//         _selectedTime3 = result.format(context);
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         automaticallyImplyLeading: false,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Stack(
//               children: [
//                 Text(
//                   'COACH APP',
//                   style: TextStyle(
//                       fontSize: 32,
//                       fontWeight: FontWeight.w100,
//                       color: Colors.black,
//                       fontFamily: 'GeometricSlab'),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(27, 13, 0, 0),
//                   child: Icon(
//                     CustomIcons.name,
//                     color: Color(0xff79dd72),
//                     size: 6,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.fromLTRB(88, 5, 0, 0),
//                   child: Icon(
//                     CustomIcons.flash,
//                     color: Color(0xff79dd72),
//                     size: 24,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         )
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             SizedBox(height: 5,),
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Container(
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.of(context).pop();
//                         },
//                         child: Icon(
//                           Icons.arrow_back_ios,
//                           color: Colors.black,
//                           size: 25,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       child: Column(
//                         children: [
//                           Text("ADMINISTRAR",
//                           style: TextStyle(
//                             fontSize: 17,
//                             fontWeight: FontWeight.bold
//                           ),),
//                           Text("NOTIFICACIONES",
//                             style: TextStyle(
//                                 fontSize: 17,
//                                 fontWeight: FontWeight.bold
//                             ),)
//                         ],
//                       ),
//                     ),
//                     Container(),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(40),
//               width: MediaQuery.of(context).size.width,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(height: 10,),
//                   Container(
//                     child: Text("Alarmas",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 20
//                     ),),
//                   ),
//                   SizedBox(height: 10,),
//                   Container(
//                     //color: Colors.grey,
//                     height: 120,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Center(
//                           child: Container(
//                             child: Text("Hora",
//                             style: TextStyle(
//                               fontSize: 18,
//                               color: Colors.grey.shade600,
//
//                             ),),
//                           ),
//                         ),
//                         Column(
//                           children: [
//                             //SizedBox(height: 5),
//                             Container(
//                               padding: EdgeInsets.all(10),
//                             //height: 30,
//                             child: Container(
//                               child: ElevatedButton(
//                                   onPressed: _show,
//                                   style: ElevatedButton.styleFrom(
//                                       primary: Colors.white,
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                           BorderRadius.circular(15)),
//                                       side: BorderSide(
//                                         color: Colors.grey,
//                                         width: 2,
//                                       )),
//                                   child: Text(
//                                   _selectedTime,
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w800),
//                                   )),
//                             ),
//                           ),
//                         Container(
//                           //height: 30,
//                           child: FlutterSwitch(
//                             height: 30.0,
//                             width: 60.0,
//                             padding: 4.0,
//                             toggleSize: 20.0,
//                             borderRadius: 20.0,
//                             activeColor: Colors.green,
//                             value: isChecked,
//                             onToggle: (value) {
//                               print(value);
//                               setState(() {
//                                 isChecked = value;
//                               });
//                             },
//                           ),
//                         )
//                           ])
//                       ],
//                     ),
//                   ),
//                   Container(
//                     //color: Colors.grey,
//                     height: 120,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Center(
//                           child: Container(
//                             child: Text("Hora Comida",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.grey.shade600,
//
//                               ),),
//                           ),
//                         ),
//                         Column(
//                             children: [
//                               //SizedBox(height: 5),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 //height: 30,
//                                 child: Container(
//                                   child: ElevatedButton(
//                                       onPressed: _show2,
//                                       style: ElevatedButton.styleFrom(
//                                           primary: Colors.white,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                               BorderRadius.circular(15)),
//                                           side: BorderSide(
//                                             color: Colors.grey,
//                                             width: 2,
//                                           )),
//                                       child: Text(
//                                         _selectedTime2,
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.w800),
//                                       )),
//                                 ),
//                               ),
//                               Container(
//                                 //height: 30,
//                                 child: FlutterSwitch(
//                                   height: 30.0,
//                                   width: 60.0,
//                                   padding: 4.0,
//                                   toggleSize: 20.0,
//                                   borderRadius: 20.0,
//                                   activeColor: Colors.green,
//                                   value: isChecked1,
//                                   onToggle: (value) {
//                                     print(value);
//                                     setState(() {
//                                       isChecked1 = value;
//                                     });
//                                   },
//                                 ),
//                               )
//                             ])
//                       ],
//                     ),
//                   ),
//                   Container(
//                     //color: Colors.grey,
//                     height: 120,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Center(
//                           child: Container(
//                             child: Text("Ejercicio",
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.grey.shade600,
//
//                               ),),
//                           ),
//                         ),
//                         Column(
//                             children: [
//                               //SizedBox(height: 5),
//                               Container(
//                                 padding: EdgeInsets.all(10),
//                                 //height: 30,
//                                 child: Container(
//                                   child: ElevatedButton(
//                                       onPressed: _show3,
//                                       style: ElevatedButton.styleFrom(
//                                           primary: Colors.white,
//                                           shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                               BorderRadius.circular(15)),
//                                           side: BorderSide(
//                                             color: Colors.grey,
//                                             width: 2,
//                                           )),
//                                       child: Text(
//                                         _selectedTime3,
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.w800),
//                                       )),
//                                 ),
//                               ),
//                               Container(
//                                 //height: 30,
//                                 child: FlutterSwitch(
//                                   height: 30.0,
//                                   width: 60.0,
//                                   padding: 4.0,
//                                   toggleSize: 20.0,
//                                   borderRadius: 20.0,
//                                   activeColor: Colors.green,
//                                   value: isChecked2,
//                                   onToggle: (value) {
//                                     print(value);
//                                     setState(() {
//                                       isChecked2 = value;
//                                     });
//                                   },
//                                 ),
//
//                               )
//                             ])
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   InkWell(
//                     onTap:  () {
//                       showDialog(
//                         context: context,
//                         builder: (context) {
//                           return Dialog(
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(20)),
//                             elevation: 16,
//                             child: Container(
//                               padding: EdgeInsets.all(10),
//                               height: MediaQuery.of(context).size.height * 0.35,
//                               child: Column(
//                                 children: [
//                                   Container(
//                                     child: Container(
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Container(
//                                             child: Text("Nueva Alarma"),
//                                           ),
//                                           InkWell(
//                                             onTap: () {
//                                               Navigator.of(context).pop();
//                                             },
//                                             child: Container(
//                                               child: Icon(Icons.cancel_outlined,
//                                               color: Colors.grey,),
//                                             ),
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Divider(
//                                     thickness: 1,
//                                   ),
//                                   Container(
//                                     padding: EdgeInsets.all(10),
//                                     child: Column(
//                                       children: [
//                                         SizedBox(height: 10,),
//                                         Container(
//                                           child: Row(
//                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Text('Fijar nombre',
//                                                   style: TextStyle(
//                                                       color: Colors.grey.shade600
//                                                   )),
//                                               Container(
//                                                 height: 30,
//                                                 width: 100,
//                                                 decoration: BoxDecoration(
//                                                     borderRadius: BorderRadius.circular(10.0),
//                                                     border: Border.all(color: Colors.grey)),
//                                                 child: Center(child: Container(child: Text('Ayuno'))),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                         SizedBox(height: 20,),
//                                         Container(
//                                           child: Row(
//                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                             children: [
//                                               Text('Fijar hora',
//                                                   style: TextStyle(
//                                                       color: Colors.grey.shade600
//                                                   )),
//                                               Container(
//                                                 height: 30,
//                                                 width: 100,
//                                                 decoration: BoxDecoration(
//                                                     borderRadius: BorderRadius.circular(10.0),
//                                                     border: Border.all(color: Colors.grey)),
//                                                 child: Center(child: Container(child: Text('6:00 am'))),
//                                               )
//                                             ],
//                                           ),
//                                         )
//                                         ])
//                                   ),
//                                   SizedBox(
//                                     height: 30,
//                                   ),
//                                   InkWell(
//                                     child: Container(
//                                       height: 30,
//                                       width: 200,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20.0),
//                                         color: Colors.green,
//                                       ),
//                                       child: Center(
//                                           child: Container(child: Text('Agregar Alarma'))),
//                                     ),
//                                     onTap: () {
//                                       // Navigator.of(context).push(
//                                       //   MaterialPageRoute(
//                                       //     builder: (context) => PlanNutrition(),
//                                       //   ),
//                                       // );
//                                     },
//                                   )
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       );
//                     },
//                     child: Container(
//                       child: Row(
//                         children: [
//                           Container(
//                             child: Icon(Icons.add,
//                               size: 30,
//                               color: Colors.green,),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           Container(
//                             child: Text("Agregar Alarma",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w600
//                             ),),
//                           )
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//


/// Test CODE

// import 'package:coach_app/services/notification_service.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import '../../../custom_icons_icons.dart';
//
// class ManageNotifications extends StatefulWidget {
//   const ManageNotifications({Key? key}) : super(key: key);
//
//   @override
//   _ManageNotificationsState createState() => _ManageNotificationsState();
// }
//
// class _ManageNotificationsState extends State<ManageNotifications> {
//   @override
//   void initState() {
//     Provider.of<NotificationService>(context, listen: false).initialize();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Colors.white,
//           automaticallyImplyLeading: false,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 children: [
//                   Text(
//                     'COACH APP',
//                     style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.w100,
//                         color: Colors.black,
//                         fontFamily: 'GeometricSlab'),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(27, 13, 0, 0),
//                     child: Icon(
//                       CustomIcons.name,
//                       color: Color(0xff79dd72),
//                       size: 6,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(88, 5, 0, 0),
//                     child: Icon(
//                       CustomIcons.flash,
//                       color: Color(0xff79dd72),
//                       size: 24,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           )),
//       body: Container(
//         child: Center(
//           child: Consumer<NotificationService>(
//             builder: (context, model, _) =>
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: () => model.instantNotification(),
//                     child: Text('Instant Notification')),
//                 ElevatedButton(
//                     onPressed: () => model.imageNotification(),
//                     child: Text('Image Notification')),
//                 ElevatedButton(
//                     onPressed: () => model.stylishNotification(),
//                     child: Text('Media Notification')),
//                 ElevatedButton(
//                     onPressed: () => model.scheduledNotification(),
//                     child: Text('Scheduled Notification')),
//                 ElevatedButton(
//                     onPressed: () => model.cancelNotification(),
//                     child: Text('Cancel Notification')),
//               ],
//             )
//             ,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:coach_app/constants/theme_data.dart';
import 'package:coach_app/model/alarm_helper.dart';
import 'package:coach_app/model/alarm_info.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:coach_app/main.dart';


class ManageNotifications extends StatefulWidget {
  @override
  _ManageNotificationsState createState() => _ManageNotificationsState();
}

class _ManageNotificationsState extends State<ManageNotifications> {
  late DateTime _alarmTime;
  late String _alarmTimeString;
  AlarmHelper _alarmHelper = AlarmHelper();
  late Future<List<AlarmInfo>> _alarms;
  late List<AlarmInfo> _currentAlarms;

  @override
  void initState() {
    _alarmTime = DateTime.now();
    _alarmHelper.initializeDatabase().then((value) {
      print('------database intialized');
      loadAlarms();
    });
    super.initState();
  }

  void loadAlarms() {
    _alarms = _alarmHelper.getAlarms();
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Alarm',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: CustomColors.primaryTextColor,
                fontSize: 24),
          ),
          Expanded(
            child: FutureBuilder<List<AlarmInfo>>(
              future: _alarms,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  _currentAlarms = snapshot.data!;
                  return ListView(
                    children: snapshot.data!.map<Widget>((alarm) {
                      var alarmTime =
                      DateFormat('hh:mm aa').format(alarm.alarmDateTime);
                      var gradientColor = GradientTemplate
                          .gradientTemplate[alarm.gradientColorIndex].colors;
                      return Container(
                        margin: const EdgeInsets.only(bottom: 32),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: gradientColor,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: gradientColor.last.withOpacity(0.4),
                              blurRadius: 8,
                              spreadRadius: 2,
                              offset: Offset(4, 4),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.label,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      alarm.title,
                                      style: TextStyle(
                                          color: Colors.white,
                                          ),
                                    ),
                                  ],
                                ),
                                Switch(
                                  onChanged: (bool value) {},
                                  value: true,
                                  activeColor: Colors.white,
                                ),
                              ],
                            ),
                            Text(
                              'Mon-Fri',
                              style: TextStyle(
                                  color: Colors.white),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  alarmTime,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                // IconButton(
                                //     icon: Icon(Icons.delete),
                                //     color: Colors.white,
                                //     onPressed: () {
                                //       //deleteAlarm(alarm.id);
                                //     }),
                              ],
                            ),
                          ],
                        ),
                      );
                    }).followedBy([
                      if (_currentAlarms.length < 5)
                        DottedBorder(
                          strokeWidth: 2,
                          color: CustomColors.clockOutline,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(24),
                          dashPattern: [5, 4],
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: CustomColors.clockBG,
                              borderRadius:
                              BorderRadius.all(Radius.circular(24)),
                            ),
                            child: ElevatedButton(
                              // padding: const EdgeInsets.symmetric(
                              //     horizontal: 32, vertical: 16),
                              onPressed: () {
                                _alarmTimeString =
                                    DateFormat('HH:mm').format(DateTime.now());
                                showModalBottomSheet(
                                  useRootNavigator: true,
                                  context: context,
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(24),
                                    ),
                                  ),
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (context, setModalState) {
                                        return Container(
                                          padding: const EdgeInsets.all(32),
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: () async {
                                                  var selectedTime =
                                                  await showTimePicker(
                                                    context: context,
                                                    initialTime:
                                                    TimeOfDay.now(),
                                                  );
                                                  if (selectedTime != null) {
                                                    final now = DateTime.now();
                                                    var selectedDateTime =
                                                    DateTime(
                                                        now.year,
                                                        now.month,
                                                        now.day,
                                                        selectedTime.hour,
                                                        selectedTime
                                                            .minute);
                                                    _alarmTime =
                                                        selectedDateTime;
                                                    setModalState(() {
                                                      _alarmTimeString =
                                                          DateFormat('HH:mm')
                                                              .format(
                                                              selectedDateTime);
                                                    });
                                                  }
                                                },
                                                child: Text(
                                                  _alarmTimeString,
                                                  style:
                                                  TextStyle(fontSize: 32),
                                                ),
                                              ),
                                              ListTile(
                                                title: Text('Repeat'),
                                                trailing: Icon(
                                                    Icons.arrow_forward_ios),
                                              ),
                                              ListTile(
                                                title: Text('Sound'),
                                                trailing: Icon(
                                                    Icons.arrow_forward_ios),
                                              ),
                                              ListTile(
                                                title: Text('Title'),
                                                trailing: Icon(
                                                    Icons.arrow_forward_ios),
                                              ),
                                              FloatingActionButton.extended(
                                                onPressed: onSaveAlarm,
                                                icon: Icon(Icons.alarm),
                                                label: Text('Save'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                                // scheduleAlarm();
                              },
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.add_alarm, size: 40,),
                                  SizedBox(height: 8),
                                  Text(
                                    'Add Alarm',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'avenir'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      else
                        Center(
                            child: Text(
                              'Only 5 alarms allowed!',
                              style: TextStyle(color: Colors.white),
                            )),
                    ]).toList(),
                  );
                }
                return Center(
                  child: Text(
                    'Loading..',
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void scheduleAlarm(
      DateTime scheduledNotificationDateTime, AlarmInfo alarmInfo) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'alarm_notif',
      'alarm_notif',
      'Channel for Alarm notification',
      icon: 'icon',
      sound: RawResourceAndroidNotificationSound('a_long_cold_sting'),
      largeIcon: DrawableResourceAndroidBitmap('codex_logo'),
    );

    var iOSPlatformChannelSpecifics = IOSNotificationDetails(
        sound: 'a_long_cold_sting.wav',
        presentAlert: true,
        presentBadge: true,
        presentSound: true);
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics, iOS: iOSPlatformChannelSpecifics);

    await flutterLocalNotificationsPlugin.schedule(0, 'Office', alarmInfo.title,
        scheduledNotificationDateTime, platformChannelSpecifics);
  }

  void onSaveAlarm() {
    DateTime scheduleAlarmDateTime;
    if (_alarmTime.isAfter(DateTime.now()))
      scheduleAlarmDateTime = _alarmTime;
    else
      scheduleAlarmDateTime = _alarmTime.add(Duration(days: 1));

    var alarmInfo = AlarmInfo(
      alarmDateTime: scheduleAlarmDateTime,
      gradientColorIndex: _currentAlarms.length,
      title: 'alarm',
    );
    _alarmHelper.insertAlarm(alarmInfo);
    scheduleAlarm(scheduleAlarmDateTime, alarmInfo);
    Navigator.pop(context);
    loadAlarms();
  }

  void deleteAlarm(int id) {
    _alarmHelper.delete(id);
    //unsubscribe for notification
    loadAlarms();
  }
}