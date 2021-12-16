import 'package:flutter/material.dart';

class BalagohPage extends StatelessWidget {
  const BalagohPage({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                SizedBox(height: 30),
                Center(
                  child: Text(
                    "Materi Balagoh",
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
