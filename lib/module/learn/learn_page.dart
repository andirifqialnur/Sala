import 'package:flutter/material.dart';
import 'package:sala_app_project/module/learn/pages/balagoh.dart';
import 'package:sala_app_project/module/learn/pages/shorof.dart';
import 'pages/kosakata.dart';
import 'pages/nahwu.dart';
import 'pages/percakapan.dart';
import 'widgets/learn_widget.dart';

class LearnPage extends StatelessWidget {
  const LearnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Center(
          child: Text(
            "Materi Belajar",
            style: TextStyle(
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: [
              // LearnWidget(title: "Materi Kosakata"),
              // LearnWidget(title: "Materi Percakapan dan Membaca"),
              // LearnWidget(title: "Materi Nahwu"),
              // LearnWidget(title: "Materi Shorof"),
              // LearnWidget(title: "Materi Balagah"),

              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]),
                child: Center(
                  child: ListTile(
                    title: Text(
                      "Materi Kosakata",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KosakataPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]),
                child: Center(
                  child: ListTile(
                    title: Text(
                      "Materi Bacaan dan Bahasa",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PercakapanPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]),
                child: Center(
                  child: ListTile(
                    title: Text(
                      "Materi Nahwu",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NahwuPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]),
                child: Center(
                  child: ListTile(
                    title: Text(
                      "Materi Shorof",
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.chevron_right_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShorofPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(
              //     top: 20,
              //     left: 20,
              //     right: 20,
              //   ),
              //   height: 80,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(15),
              //       boxShadow: [
              //         BoxShadow(
              //           spreadRadius: 2,
              //           blurRadius: 10,
              //           color: Colors.black.withOpacity(0.1),
              //         )
              //       ]),
              //   child: Center(
              //     child: ListTile(
              //       title: Text(
              //         "Materi Balagoh",
              //         style: TextStyle(
              //           fontFamily: 'Comfortaa',
              //           fontWeight: FontWeight.w900,
              //           fontSize: 16,
              //         ),
              //       ),
              //       trailing: IconButton(
              //         icon: Icon(
              //           Icons.chevron_right_rounded,
              //           size: 30,
              //           color: Colors.black,
              //         ),
              //         onPressed: () {
              //           Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //               builder: (context) => BalagohPage(),
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
