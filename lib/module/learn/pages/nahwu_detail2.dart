import 'package:flutter/material.dart';

class NahwuDetail2 extends StatelessWidget {
  const NahwuDetail2({Key? key}) : super(key: key);

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
                      children: [
                        Text(
                          "أجْزَاء الجملة",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Comfortaa',
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Kalimat Sempurna",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Comfortaa',
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
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
                          "(1)	رَكِبَ إبْرَاهِيْمُ الحصانَ ‘Ibrahim menunggang kuda’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(2)	يُدَاعِبُ إِسْمَاعِيْلُ الْقِطَّ ‘Ismail membelai kucing’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(3)	يَحْصُدُ الْفَلَّاحُ اَلْقَمْحَ فِيْ الْحَقْلِ  ‘Petani itu menuai gandum di ladang’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(4)	هَلْ سَمِعْتَ النَّصِيْحَةَ؟ ‘Apakah kamu mendengarkan nasihat?’",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(5)	تَجْرِى السَّفِيْنَةُ عَلَى الْمَاءِ ‘Kapal itu berlayar di atas air’",
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
                      """     Kita mengetahui bahwa di dalam jumlah mufidah terdiri dari bagian-bagian yang merupakan kata-kata. Kalimat dalam bahasa Arab disebut al-jumlatu, sedangkan kata disebut al-kalimatu. Dari contoh kalimat di atas terdapat beberapa jenis kata. Kata Ibrahim, Ismail, dan al-Fallahu ‘Petani’ adalah kata yang disebut manusia; kuda dan kucing disebut dengan hewan; gandum disebut dengan tumbuhan; air, nasihat, ladang, merupakan kata-kata lain yang sama kedudukannya sebagai kata benda dan dalam bahasa Arab disebut الْإِسْمُ [al-Ismu]. """,
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
                      """     Pada kalimat di atas, kita juga menemukan beberapa kata yang disebut [RaKiBa] ‘mengendarai’, [yuDabi’u] ‘membelai’, [yaHSuDu] ‘menuai’, [SaMi’ta] ‘mendengarkan’, dan [TaJri] ‘berlayar’; menunjukkan terjadinya suatu tindakan dalam waktu yang khusus. Pada kata /Ra-Ki-Ba/ ‘menunggang’, menunjukkan perbuatan mengendarai kuda di waktu lampau, dan kata /yuDa-‘i-Bu/ menunjukkan perbuatan membelai kucing pada masa sekarang atau masa yang akan datang. Kata-kata tersebut adalah kata kerja yang dalam bahasa Arab disebut الْفِعْلُ [al-Fi’lu].""",
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
                      """     Pada kalimat di atas ditemukan kata [Hal] ‘apakah’, [Fii] ‘di dalam’, dan [‘ala] ‘di atas’ jika diucapkan terpisah tanpa kata-kata yang mengikutinya, maka tidak akan dipahami makna sepenuhnya. Makna sepenuhnya akan muncul jika berdampingan dengan kata setelahnya. Jenis kata ini adalah partikel, yang dalam bahasa Arab disebut dengan حَرْفٌ [Harf]. """,
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
                      left: 20,
                      bottom: 50,
                      right: 10,
                      top: 10,
                    ),
                    child: Text(
                      "(1)	‘Kata’ di dalam bahasa Arab terdiri menjadi tiga, yaitu اِسْمٌ [ismun], فِعْلٌ [fi’lun], dan حَرْفٌ [harfun].\n\n(2)	Isim adalah setiap lafad yang menunjukkan nama dari kegiatan manusia, hewan, tumbuhan, benda mati, atau benda yang lainnya.\n\n(3)	Fi’il adalah setiap lafad yang menunjukkan atas sebuah perbuatan pada waktu tertentu.\n\n(4)	Harf adalah setiap lafad yang maknanya belum jelas kecuali jika digabungkan dengan kata-kata lainnya. ",
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
