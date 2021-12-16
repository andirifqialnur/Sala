import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sala_app_project/main.dart';
import 'package:sala_app_project/module/testAlarm/data/alarm_data.dart';
// import 'package:sala_app_project/module/testAlarm/notification_method.dart';

// import 'package:timezone/data/latest_all.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

class AlarmTestPage extends StatefulWidget {
  const AlarmTestPage({Key? key}) : super(key: key);

  @override
  _AlarmTestPageState createState() => _AlarmTestPageState();
}

class _AlarmTestPageState extends State<AlarmTestPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Text(
            "List Alarm",
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w900,
              fontSize: 24,
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: alarms.map<Widget>((alarm) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: alarm.gradientColors!,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: alarm.gradientColors!.last.withOpacity(0.4),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(4, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.label,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(width: 8),
                              Text(
                                'Office',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Comfortaa'),
                              ),
                            ],
                          ),
                          Switch(
                            value: true,
                            onChanged: (bool value) {},
                            activeColor: Colors.white,
                          ),
                        ],
                      ),
                      Text(
                        'Mon_Fri',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Comfortaa'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "07:30 AM",
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w800),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 36,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).followedBy([
                DottedBorder(
                  strokeWidth: 3,
                  color: Colors.orange,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(25),
                  dashPattern: [5, 4],
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                    ),
                    child: FlatButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                      onPressed: () {
                        scheduleAlarm();
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_alarm,
                            size: 30,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Add Alarm',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]).toList(),
            ),
          )
        ],
      ),
    );
  }

  void scheduleAlarm() async {
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'alarm_notif',
      'alarm_notif',
      channelDescription: 'Channel for Alarm notification',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
      icon: 'logo',
      sound: RawResourceAndroidNotificationSound('audio1'),
      largeIcon: DrawableResourceAndroidBitmap('logo'),
    );
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      'Office',
      'Selamat Pagi! Apakah Anda Sudah Muroja\'ah',
      platformChannelSpecifics,
    );
  }
}
