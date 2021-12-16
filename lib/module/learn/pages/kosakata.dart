import 'package:flutter/material.dart';
import 'package:sala_app_project/module/learn/widgets/audio_widget.dart';
import 'package:sala_app_project/module/learn/widgets/jenis_kata.dart';
import 'package:sala_app_project/module/learn/widgets/video_widget.dart';

class KosakataPage extends StatelessWidget {
  const KosakataPage({Key? key}) : super(key: key);

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
                      "Materi Kosakata",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  ListKataKerja(
                    title: "التحية والتعارف",
                    background: Colors.orange.shade400,
                  ),
                  SizedBox(height: 20),
                  AudioWidget(),
                  SizedBox(height: 20),
                  VideoWidget(),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
