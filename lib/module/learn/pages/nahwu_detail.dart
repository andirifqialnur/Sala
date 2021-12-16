import 'package:flutter/material.dart';

class NahwuDetail extends StatelessWidget {
  const NahwuDetail({Key? key}) : super(key: key);

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
                          "الجُمْلَةُ المُفِيدَةُ",
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
                          "(1)	اَلْبُسْتَانُ جَمِيْلٌ 'Taman itu indah'",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(2)	الشَّمْسُ طَالِعَةٌ 'Matahari itu terbit'",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(3)	قَطَفَ مُحَمَّدٌ زَهْرَةً 'Muhammad memetik bunga'",
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(4)	يَعِيْشُ السَّمَكُ فِي الْمَاءِ 'Ikan hidup di air'",
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
                      """     Jika diamati, kalimat pertama terdiri dari dua kata, salah satunya adalah /al-bustanu/ 'taman', dan yang kedua adalah /jamiilun/ 'indah'. Jika diambil kata pertama saja, 'taman', itu hanya memahami makna tunggal yang tidak dapat dikomunikasikan. Hal ini juga berlaku pada kata kedua saja,'indah', maka tidak bisa dikomunikasikan.""",
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
                      """     Hal ini berbeda ketika menggabungkan salah satu dari dua kata tersebut dalam sintaks, maka dapat dikatakan 'Taman itu indah.' Dari struktur sintaks gabungan dua kata tersebut maka dapat dipahami informasi bahwa taman itu sebagian besar atau seluruhnya indah. Oleh karena itu, struktur ini disebut jumlatun mufiidatun 'kalimat yang berguna', dan masing-masing dari dua kata dianggap sebagai bagian dari kalimat ini, dan ini adalah bagaimana dikatakan dalam contoh yang tersisa.""",
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
                      """     Jadi dilihat bahwa kata saja tidak cukup untuk berkomunikasi, maka perlu minimal dua kata atau lebih hingga dapat memberikan informasi yang yang lengkap kepada pendengar. Adapun kata perintah قُمْ! اِجْلِسْ  ‘Bangun!’ ‘Duduk!’ seperti tampak cukup satu kata dalam berkomunikasi. Akan tetapi, kedua kata tersebut bukan kata melainkan kalimat majemuk dari dua kata, قُمْ أَنْتَ!  ‘duduklah kamu!’, tetapi kata pertama disuarakan dan kata kedua dilesapkan, sehingga seperti terucap satu kata. """,
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
                      "(1)	Struktur yang dapat memberikan informasi sepenuhnya dinamakan jumlatun mufidatun, dan juga dapat disebut kalam ‘tuturan’.\n\n(2)	Jumlah mufidah dapat terdiri dari dua kata atau lebih, dan setiap kata di dalamnya dianggap sebagai bagian darinya. ",
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
