import 'package:flutter/material.dart';

class ShorofDetail extends StatelessWidget {
  const ShorofDetail({Key? key}) : super(key: key);

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Pengertian Ilmu Shorof",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "     Sharaf secara bahasa bermakna mengubah Ilmu sharaf adalah ilmu yang mempelajari perubahan kata dalam bahasa Arab, yaitu berusaha mengubah satu asal kata menjadi beberapa bentuk untuk menunjukkan makna yang berbeda.",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 13,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Perbedaan Ilmu Sharaf dan Ilmu Nahwu",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "     Ilmu sharaf mempelajari perubahan pada bentuk kata dan perubahan maknanya, sedangkan ilmu nahwu mempelajari bentuk harakat akhir pada kata pada susunan kalimat. Pada ilmu pembelajaran bahasa, sharaf dipadankan dengan morfologi dan nahwu dengan sintaksis.",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 13,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "Shigat",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Comfortaa',
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "     Shighat secara bahasa adalah bentuk atau jenis secara istilah, shighat berarti jenis perubahan kata Arab pada tasrif istilahi. ",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 13,
                        wordSpacing: 2,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ada 10 shighat pada tasrif istilahi : ",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 13,
                            wordSpacing: 2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Column(
                          children: [
                            Text(
                              "الفعل الماضي Fi'il Madhi, yaitu setiap kata kerja yang menunjukkan tindakan lampau (past). Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> فَتَحَ [Fa-Ta-Ha] '(Dia, laki-laki, tunggal, telah) membuka'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> حَسِبَ [Ha-Si-Ba] '(Dia, laki-laki, tunggal, telah) menduga'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> كَتَبَ [Ka-Ta-Ba] '(Dia, laki-laki, tunggal, telah) menulis'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> نَامَ [Na-a-Ma] '(Dia, laki-laki, tunggal, telah) tidur'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> جَلَسَ [Ja-La-Sa] '(Dia, laki-laki, tunggal, telah) duduk'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "الفعل المضارع Fi'il Mudhari', yaitu Setiap kata kerja yang menunjukkan tindakan yang sedang atau akan dilakukan (present/ future). Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> يَفْتَحُ [yaF-Ta-Hu] '(Dia, laki-laki, tunggal, sedang) membuka'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> يَحْسَبُ [yaH-Sa-Bu] '(Dia, laki-laki, tunggal, sedang) menduga'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> يَكْتُبُ [yaK-Tu-Bu] '(Dia, laki-laki, tunggal, sedang) menulis'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> يَنَامُ [yaNa-a-Mu] '(Dia, laki-laki, tunggal, sedang) tidur'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> يَجْلِسُ [yaJ-Li-Su] '(Dia, laki-laki, tunggal, sedang) duduk'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "ر Masdar, yaitu nomina (kata benda) yang menunjukkan perbuatan yang dilakukan oleh pelakunya. Masdar ada dua, yaitu masdar ghairu mimi فَتْحٌ، خَوْفٌ, dan masdar mimi مَفْتُوْحٌ، مَوْعِدٌ.",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "اسم الفاعل Isim Fa'il, yaitu nomina yang menunjukkan kepada yang melakukan sesuatu (pelaku). Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> فَاتِحٌ [Faa-Ti-Hun] 'Orang yang membuka'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> مَاهِرٌ [Maa-Hi-Run] 'Orang yang pintar'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "اسم المفعول Isim Maf'ul, yaitu nomina yang menerangkan sebagai penderita dari sebuah tindakan. مَفْتُوْحٌ [maF-Tuu-Hun] 'sesuatu yang dibuka' ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "فعل الأمر Fi'il Amr, yaitu kata kerja perintah. Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> ادْخُلْ [uD-Khu-L] 'masuklah (kamu, laki-laki, tunggal)'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> اكْتُبْ [uK-Tu-B] 'tulislah (kamu, laki-laki, tunggal)'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "الفعل النهي Fi'il Nahi, yaitu kata kerja larangan لَا تَكْتُبْ [laa taK-Tu-B] 'jangan (kamu, laki-laki, tunggal) tulis'",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "اسم المكان Isim Makan, yaitu nomina yang menunjukkan tempat terjadinya perbuatan. Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> مَسْجِدٌ [maS-Ji-Dun] 'tempat sujud'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> مَلْعَبٌ [maL-'a-Bun] 'tempat bermain'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "اسم الزمان Isim Zaman, yaitu nomina yang menunjukkan waktu ter jadinya perbuatan. Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> مَوْلِدٌ [maW-Li-Dun] 'waktu lahir'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> مَغْرِبٌ [maGH-Ri-Bun] 'waktu terbenam'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "اسم الآلة Isim Alat, yaitu nomina yang menunjukkan alat yang digunakan dalam melakukan perbuatan. Contoh : ",
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 13,
                                wordSpacing: 2,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    "> مِفْتَاحٌ [miF-Ta-Hun] 'alat untuk membuka' makna 'kunci'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                  Text(
                                    "> مِكْنَسَةٌ [miK-Na-Sa-tun] 'alat untuk menyapu' makna 'sapu'",
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 12,
                                      wordSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ],
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
