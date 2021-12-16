import 'package:flutter/material.dart';

class LearnWidget extends StatelessWidget {
  final String title;
  final IconButton? onpressed;
  // final String onpressed;

  LearnWidget({required this.title, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            title,
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
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
