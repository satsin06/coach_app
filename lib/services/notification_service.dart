import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService extends ChangeNotifier{

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();


  Future initialize() async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    AndroidInitializationSettings androidInitializationSettings =
        AndroidInitializationSettings("icon");

    IOSInitializationSettings iosInitializationSettings =
        IOSInitializationSettings();

    final InitializationSettings initializationSettings =
        InitializationSettings(
          android: androidInitializationSettings,
          iOS: iosInitializationSettings
        );

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
    );


  }

  /// Instant Notifications
Future instantNotification() async {

    var android = AndroidNotificationDetails("id", "channel", "description");

    var ios = IOSNotificationDetails();

    var platform = new NotificationDetails(
      android: android,
      iOS: ios
    );

    await _flutterLocalNotificationsPlugin.show(0, "demo", "tap to do something ",platform,
    payload: "welcome to demo app"
    );
}

///Image notification
  Future imageNotification() async {
    var bigPicture = BigPictureStyleInformation(
        DrawableResourceAndroidBitmap("icon"),
        largeIcon: DrawableResourceAndroidBitmap("icon"),
        contentTitle: "Demo image notification",
        summaryText: "This is some text",
        htmlFormatContent: true,
        htmlFormatContentTitle: true);

    var android = AndroidNotificationDetails("id", "channel", "description",
        styleInformation: bigPicture);

    var platform = new NotificationDetails(android: android);

    await _flutterLocalNotificationsPlugin.show(
        0, "Demo Image notification", "Tap to do something", platform,
        payload: "Welcome to demo app");
  }

  ///Stylish Notification
  Future stylishNotification() async {
    var android = AndroidNotificationDetails("id", "channel", "description",
        color: Colors.deepOrange,
        enableLights: true,
        enableVibration: true,
        largeIcon: DrawableResourceAndroidBitmap("icon"),
        styleInformation: MediaStyleInformation(
            htmlFormatContent: true, htmlFormatTitle: true));

    var platform = new NotificationDetails(android: android);

    await _flutterLocalNotificationsPlugin.show(
        0, "Demo Stylish notification", "Tap to do something", platform);
  }


/// Scheduled Notification

Future scheduledNotification() async {

    var interval = RepeatInterval.everyMinute;
  var bigPicture = BigPictureStyleInformation(
  DrawableResourceAndroidBitmap("icon"),
  largeIcon: DrawableResourceAndroidBitmap("icon"),
  contentTitle: "Demo image notification",
  summaryText: "This is some text",
  htmlFormatContent: true,
  htmlFormatContentTitle: true);

  var android = AndroidNotificationDetails("id", "channel", "description",
  styleInformation: bigPicture);

  var platform = new NotificationDetails(android: android);

  await _flutterLocalNotificationsPlugin.periodicallyShow(
  0,
  "Demo Sheduled notification",
  "Tap to do something",
  interval,
  platform);
}

  /// Cancel notification

  Future cancelNotification() async  {
    await _flutterLocalNotificationsPlugin.cancelAll();

}

}