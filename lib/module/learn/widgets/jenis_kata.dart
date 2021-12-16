import 'package:flutter/material.dart';

import 'katakata.dart';

class ListKataKerja extends StatelessWidget {
  final Color? background;
  final String title;

  const ListKataKerja({
    required this.background,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  KataKerja(kata: "Guru (Laki-laki)", arabic: "مُدَرِّسٌ"),
                  KataKerja(kata: "Murid (Perempuan)", arabic: "طَالِبَةٌ"),
                  KataKerja(kata: "Dokter(perempuan)", arabic: "طَبِيْبَةٌ"),
                  KataKerja(kata: "Insinyur (laki-laki)", arabic: "ُهَنْدِسٌ"),
                  KataKerja(kata: "Saudara (laki-laki)", arabic: "أَخٌ"),
                  KataKerja(kata: "Saudara (perempuan)", arabic: "أٌخْتٌ"),
                  KataKerja(kata: "Teman (perempuan)", arabic: "صَدِيْقٌ"),
                  KataKerja(kata: "Saya", arabic: "أنا"),
                  KataKerja(kata: "Kamu", arabic: "أَنْتَ"),
                  KataKerja(kata: "Kamu (perempuan)", arabic: "َنْتِ"),
                  KataKerja(kata: "Dia (laki-laki)", arabic: "َهُوَ"),
                  KataKerja(kata: "Dia (perempuan)", arabic: "َهِيَ"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListKataBenda extends StatelessWidget {
  final Color? background;
  final String title;

  const ListKataBenda({
    required this.background,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  KataBenda(kata: "Kabel", arabic: "السّلَامُ عَلَيْكُمْ"),
                  KataBenda(kata: "Meja", arabic: "السّلَامُ عَلَيْكُمْ"),
                  KataBenda(kata: "Pena", arabic: "السّلَامُ عَلَيْكُمْ"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListKataSifat extends StatelessWidget {
  final Color? background;
  final String title;

  const ListKataSifat({
    required this.background,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: background,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  KataSifat(kata: "Marah", arabic: "السّلَامُ عَلَيْكُمْ"),
                  KataSifat(kata: "Ramah", arabic: "السّلَامُ عَلَيْكُمْ"),
                  KataSifat(kata: "Dengki", arabic: "السّلَامُ عَلَيْكُمْ"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
