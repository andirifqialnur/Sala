import 'package:flutter/material.dart';

class NahwuDetail3 extends StatelessWidget {
  const NahwuDetail3({Key? key}) : super(key: key);

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
            margin: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Pembagian Verba Berdasarkan Waktu",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Comfortaa',
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "(1)	جَرَى الْكَلْبُ  ‘Anjing itu (telah) berlari’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(2)	أَغْسِلُ يَدَيَّ ‘Saya (sedang) mencuci tanganku’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(3)	أَطْعِمْ قِطَّكَ! ‘(Berilah) Makan kucingmu!’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      """     Pada penjelasan di atas, diketahui bahwa kalimat pertama memiliki makna kata kerja ‘telah berlari’, fi’il tersebut menunjukkan waktu lampau.  Sedangkan pada kalimat kedua, terdapat makna ‘sedang mencuci’, artinya fi’il tersebut menunjukkan waktu sekarang. Pada kalimat ketiga, adalah sebuah perintah untuk memberi makan. Fiil tersebut bermaksud untuk memerintah sebuah tindakan yang akan dilakukan pada masa mendatang. """,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 13,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Kaidah : ",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 13,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 10,
                      bottom: 50,
                      left: 20,
                      right: 10,
                    ),
                    child: Text(
                      "(1)	Berdasarkan waktu, fi’il dibagi menjadi tiga jenis, yaitu kata kerja lampau, sekarang/ mendatang, dan perintah untuk masa mendatang.\n\n(2)	Kata kerja lampau disebut الفِعْلُ الْمَاضِي [al-fi’lu al-madhi]\n\n(3)	Kata kerja sedang/ akan dilakukan disebut الفِعْلُ الْمُضَارِعُ [al-fi’lu al-mudhari’]\n\n(4)	Kata kerja perintah disebut الفِعْلُ الْأَمْرُ [al-fi’lu al-amru]",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 13,
                        wordSpacing: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
