import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:sala_app/models/alarm_info.dart';

class AlarmList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
      height: 105,
      decoration: BoxDecoration(
        color: Colors.red.shade100,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.redAccent,
            blurRadius: 5.0,
            offset: Offset(0.0, 0.0),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.label_rounded,
                color: Colors.redAccent,
              ),
              SizedBox(width: 5),
              Container(
                width: 120,
                height: 25,
                child: Text(
                  "08:00",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Comfortaa',
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 130),
              Switch(
                onChanged: (bool value) {},
                value: true,
                activeColor: Colors.redAccent,
              ),
            ],
          ),
          Container(
            child: Text(
              "sembarang",
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 15,
                width: 250,
                child: Text(
                  "Kata Benda Disekolah  .  10 Kata",
                  style: TextStyle(fontFamily: 'Comfortaa'),
                ),
              ),
              SizedBox(width: 50),
              Icon(
                Icons.delete_rounded,
                color: Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
