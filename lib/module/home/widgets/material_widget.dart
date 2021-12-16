import 'package:flutter/material.dart';
import 'package:sala_app_project/module/learn/learn_page.dart';

class MaterialWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String background;

  MaterialWidget({
    required this.title,
    required this.subtitle,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                title,
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  color: Colors.orange,
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 250,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
