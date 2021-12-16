// import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sala_app_project/module/auth/signIn_page.dart';
import 'package:sala_app_project/module/splash/splash_page.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // AwesomeNotifications().initialize(
  //   'resource://drawable/logo',
  //   [
  //     NotificationChannel(
  //       channelKey: 'basic_channel',
  //       channelName: 'Sala App',
  //       channelDescription: 'Sembarang mo dulu',
  //       channelShowBadge: true,
  //       defaultColor: Colors.orange,
  //       importance: NotificationImportance.Max,
  //       soundSource: 'resource://raw/audio1',
  //     ),
  //     NotificationChannel(
  //       channelKey: 'scheduled_channel',
  //       channelName: 'Sala App',
  //       channelDescription: 'Sembarang mo dulu',
  //       channelShowBadge: true,
  //       defaultColor: Colors.orange,
  //       importance: NotificationImportance.Max,
  //       soundSource: 'resource://raw/audio1',
  //     ),
  //   ],
  // );

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('logo');

  final InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: (String? payload) async {
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashPage(),
    );
  }
}
