import 'package:coach_app/Screens/splash_screen.dart';
import 'package:coach_app/model/my_diet_model.dart';
import 'package:coach_app/services/auth_service.dart';
import 'package:coach_app/services/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:provider/provider.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';


final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(MyDietModelAdapter());
  await Hive.openBox<MyDietModel>('foods');

  await Firebase.initializeApp();

  var initializationSettingsAndroid =
  AndroidInitializationSettings('icon');

  var initializationSettingsIOS = IOSInitializationSettings();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      );
  runApp(MyApp());
}
//   NotificationService();
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('es_MX');
    return MultiProvider(
      providers: [
        Provider<AuthService>(
            create: (_) => AuthService()),
        ChangeNotifierProvider<NotificationService>(create: (_) => NotificationService())
      ],
      child: MaterialApp(
        title: 'Coach App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
