import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sala_app_project/module/auth/widgets/user_model.dart';
import 'widgets/material_widget.dart';
import 'widgets/quotes_widget.dart';
import 'widgets/setor_button_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Ahlan wa Sahlan",
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      color: Colors.orange,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${loggedInUser.username}",
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: 20),
                  QuotesWidget(),
                  SizedBox(height: 20),
                  SetorButtonWidget(),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Materi-Materi yang tersedia",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Comfortaa',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          MaterialWidget(
                              title: "KosaKata",
                              subtitle:
                                  "Tersedia berbagai macam kosakata dengan audio nya dengan bacaan yang benar",
                              background: ""),
                          SizedBox(height: 20),
                          MaterialWidget(
                              title: "Percakapan",
                              subtitle:
                                  "Materi Percakapan disediakan dengan design seperti sebuah chat sehingga tidak membingungkan para pengguna",
                              background: ""),
                          SizedBox(height: 20),
                          MaterialWidget(
                              title: "Nahwu",
                              subtitle:
                                  "Nahwu merupakan disiplin ilmu yang mempelajari prinsip-prinsip untuk mengenali kalimat-kalimat bahasa Arab dari sisi i’rab dan bina’-nya ",
                              background: ""),
                          SizedBox(height: 20),
                          MaterialWidget(
                              title: "Sharaf",
                              subtitle:
                                  "Sharaf secara bahasa bermakna mengubah Ilmu sharaf adalah ilmu yang mempelajari perubahan kata dalam bahasa Arab.",
                              background: ""),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
