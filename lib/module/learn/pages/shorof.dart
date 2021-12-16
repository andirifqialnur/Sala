import 'package:flutter/material.dart';
import 'package:sala_app_project/module/learn/pages/shorof_detail.dart';
import 'package:sala_app_project/module/learn/widgets/sub_bab.dart';

class ShorofPage extends StatelessWidget {
  const ShorofPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
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
          leading: InkWell(
            child: Icon(Icons.keyboard_backspace, color: Colors.black),
            onTap: () {
              Navigator.of(context).pop(true);
            },
          ),
        ),
        body: SafeArea(
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Materi Shorof",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ShorofDetail(),
                        ),
                      );
                    },
                    child: Container(
                      width: 500,
                      margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Text(
                        "Pengertian Ilmu Sharaf & Shighat",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SubBab(title: "Al-Fi’lu"),
                  SubBab(title: "Fi’il Shahih dan Mu’tal"),
                  SubBab(title: "Wazan Fi’il Mujarrad"),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: 500,
                      margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tasrif Fi’il Lughawi",
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Tasrif Fi’il Madhi",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "Tasrif Fi’il Mudhari’",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "Tasrif Fi’il Amr",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SubBab(title: "Tsulatsi Mazid"),
                  SubBab(title: "Ruba’i Mazid"),
                  FlatButton(
                    onPressed: () {},
                    child: Container(
                      width: 500,
                      margin: EdgeInsets.fromLTRB(10, 10, 20, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Iqbal",
                            style: TextStyle(
                              fontFamily: 'Comfortaa',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Alif dan Ya’ menjadi Wawu",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "Wawu menjadi Ya’",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "Wawu dan Ya’ menjadi Hamzah",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "Wawu dan Ya’ menjadi Alif",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 7),
                                Text(
                                  "Wawu dan Ya’ menjadi Ta’",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SubBab(title: "Ibdal"),
                  SubBab(title: "I’lal dengan Sukun"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
