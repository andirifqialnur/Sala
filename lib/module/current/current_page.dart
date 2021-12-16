import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sala_app_project/module/alarm/alarm_page.dart';
import 'package:sala_app_project/module/home/home_page.dart';
import 'package:sala_app_project/module/learn/learn_page.dart';
import 'package:sala_app_project/module/profile/profile_page.dart';
import 'package:sala_app_project/module/setoran/setoran_page.dart';
import 'package:sala_app_project/module/setoran/view/home_view.dart';
import 'package:sala_app_project/module/testAlarm/test_alarm_page.dart';

class CurrentPage extends StatefulWidget {
  @override
  _CurrentPageState createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  final screens = [
    // AlarmPage(),
    AlarmTestPage(),
    HomeView(),
    HomePage(),
    LearnPage(),
    ProfilePage(),
  ];

  final menues = <Widget>[
    Icon(Icons.alarm_rounded, size: 30),
    Icon(Icons.bookmark_add_rounded, size: 30),
    Icon(Icons.home_rounded, size: 30),
    Icon(Icons.book_rounded, size: 30),
    Icon(Icons.person_rounded, size: 30),
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Sala",
            style: TextStyle(
              fontFamily: 'Comfortaa',
              color: Colors.orange,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    "Keluar",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  content: Text(
                    "Apakah Anda Yakin Ingin Keluar ?",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Batal",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        "Ok",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              icon: Icon(Icons.logout_outlined),
              color: Colors.redAccent,
            ),
          ],
          backgroundColor: Colors.white,
          shadowColor: Colors.white30,
        ),
        body: screens[index],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Colors.white),
          ),
          child: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            color: Colors.orange,
            index: index,
            height: 60,
            items: menues,
            onTap: (index) => setState(() => this.index = index),
          ),
        ),
      ),
    );
  }
}
