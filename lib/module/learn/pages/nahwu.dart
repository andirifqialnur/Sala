import 'package:flutter/material.dart';
import 'package:sala_app_project/module/learn/pages/nahwu_detail.dart';
import 'package:sala_app_project/module/learn/pages/nahwu_detail2.dart';
import 'package:sala_app_project/module/learn/pages/nahwu_detail3.dart';
import 'package:sala_app_project/module/learn/widgets/sub_bab.dart';

class NahwuPage extends StatelessWidget {
  const NahwuPage({Key? key}) : super(key: key);

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Center(
                    child: Text(
                      "Materi Nahwu",
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
                          builder: (context) => NahwuDetail(),
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
                        "Al-Jumlatu Al-Mufidatu ‘Kalimat Sempurna’",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NahwuDetail2(),
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
                        "Bagian-bagian Kalimat",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NahwuDetail3(),
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
                        "Pembagian Verba Berdasarkan Waktu",
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SubBab(title: "Al-Fi’lu Al-Madhi"),
                  SubBab(title: "Al-Fi’lu Al-Mudhari’"),
                  SubBab(title: "Al-Fa’il"),
                  SubBab(title: "Al-Maf’ul Bih"),
                  SubBab(title: "Mubtada’ dan Khabar"),
                  SubBab(title: "Kalimat Verbal"),
                  SubBab(title: "Kalimat Nominal"),
                  SubBab(title: "Nasab Fi’il Mudhari’"),
                  SubBab(title: "Jazm Fi’il Mudhari’"),
                  SubBab(title: "Rafa’ Fi’il Mudhari’"),
                  SubBab(title: "Harf"),
                  SubBab(title: "Kana dan saudaranya"),
                  SubBab(title: "Inna dan saudaranya"),
                  SubBab(title: "Isim Majrur"),
                  SubBab(title: "Na’at"),
                  SubBab(title: "Mabni dan Mu’rab"),
                  SubBab(title: "Jenis Bina`"),
                  SubBab(title: "Jenis I’rab"),
                  SubBab(title: "Keadaan Mabni Madhi"),
                  SubBab(title: "Keadaan Mabni Amr"),
                  SubBab(title: "Keadaan Mabni Mudhari’"),
                  SubBab(title: "I’rab Mahally"),
                  SubBab(title: "Ushlub dalam Ilmu Nahwu"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
