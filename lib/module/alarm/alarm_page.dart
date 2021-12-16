// import 'package:awesome_notifications/awesome_notifications.dart';
import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'widgets/notifications.dart';
import 'widgets/utilities.dart';
// import 'package:sala_app/data.dart';
// import 'package:sala_app/models/alarm_helper.dart';
// import 'package:sala_app/models/alarm_info.dart';
// import 'package:sala_app/models/notifications.dart';
// import 'package:sala_app/models/utilities_notif.dart';
// import 'package:sala_app/widgets/alarm_list_widget.dart';

// import '../main.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
// Don't Delete it
  // DateTime? _alarmTime;
  // String? _alarmTimeString;
  // AlarmHelper? _alarmHelper = AlarmHelper();
  // Future<List<AlarmInfo>>? _alarms;
  // List<AlarmInfo>? _currentAlarms;

  // @override
  // void initState() {
  //   _alarmTime = DateTime.now();
  //   _alarmHelper!.initializeDatabase().then((value) {
  //     print("--------database initialize");
  //     loadAlarms();
  //   });
  //   super.initState();
  // }

  // void loadAlarms() {
  //   _alarms = _alarmHelper!.getAlarm();
  //   if (mounted) setState(() {});
  // }

  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then(
      (isAllowed) {
        if (!isAllowed) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Allow Notofications',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                ),
              ),
              content: Text(
                'Our App would like to send you a notification',
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Don't Allow",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then(
                        (_) => Navigator.pop(context),
                      ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Allow",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 18,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
    AwesomeNotifications().createdStream.listen(
      (notification) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Notification has been created on ${notification.channelKey}'),
          ),
        );
      },
    );
    AwesomeNotifications().actionStream.listen(
      (notification) {
        if (notification.channelKey == 'basic_channel' && Platform.isAndroid) {
          AwesomeNotifications().getGlobalBadgeCounter().then(
                (value) =>
                    AwesomeNotifications().setGlobalBadgeCounter(value - 1),
              );
        }
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => AlarmPage(),
          ),
          (route) => route.isFirst,
        );
      },
    );
  }

  @override
  void dispose() {
    AwesomeNotifications().actionSink.close();
    AwesomeNotifications().createdSink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50, top: 30, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Daftar Alarm",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
                child: ListView(
              children: [
                ElevatedButton(
                  onPressed: () async {
                    alarmUpdateNotifications();
                  },
                  child: Text("Check Notif"),
                )
              ],
            ))
          ],
        ),
      ),
      floatingActionButton: Positioned(
        child: FloatingActionButton(
          onPressed: () async {
            NotificationWeekAndTime? pickedSchedule =
                await pickSchedule(context);

            if (pickedSchedule != null) {
              alarmScheduledNotifications(pickedSchedule);
            }
          },
          child: Icon(Icons.add_rounded),
          backgroundColor: Colors.yellow[600],
        ),
      ),
    );
  }
}


  // void scheduleAlarm(
  //     DateTime scheduleAlarmDateTime, AlarmInfo alarmInfo) async {
  //   var scheduleNotificationDataTime =
  //       DateTime.now().add(Duration(seconds: 10));
  //   var androidPlatformChannelSpecifics = AndroidNotificationDetails(
  //     'alarm_notif',
  //     'alarm_notif',
  //     icon: 'notif_logo',
  //     playSound: true,
  //     importance: Importance.max,
  //     priority: Priority.high,
  //     sound: RawResourceAndroidNotificationSound('extreme_clock_alarm'),
  //     largeIcon: DrawableResourceAndroidBitmap('notif_logo'),
  //   );
  //   var platformChannelsSpecifics =
  //       NotificationDetails(android: androidPlatformChannelSpecifics);
  //   // ignore: deprecated_member_use
  //   await flutterLocalNotificationsPlugin.schedule(
  //     0,
  //     'Office',
  //     'Good Morning! Time To Work',
  //     scheduleNotificationDataTime,
  //     platformChannelsSpecifics,
  //   );
  // }

  // void onSaveAlarm() {
  //   DateTime scheduleAlarmDateTime;
  //   if (_alarmTime!.isAfter(DateTime.now()))
  //     scheduleAlarmDateTime = _alarmTime!;
  //   else
  //     scheduleAlarmDateTime = _alarmTime!.add(Duration(days: 1));

  //   var alarmInfo = AlarmInfo(
  //     alarmDateTime: scheduleAlarmDateTime,
  //     title: 'alarm',
  //   );
  //   _alarmHelper!.insertAlarm(alarmInfo);
  //   scheduleAlarm(scheduleAlarmDateTime, alarmInfo);
  //   Navigator.pop(context);
  //   loadAlarms();
  // }

  // void deleteAlarm(int id) {
  //   _alarmHelper!.delete(id);
  //   //unsubscribe for notification
  //   loadAlarms();
  // }

