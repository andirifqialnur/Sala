import 'package:flutter/material.dart';

class QuotesWidget extends StatelessWidget {
  const QuotesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      width: 70,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            height: 80,
            width: double.infinity,
            child: Text(
              '"Di antara tanda matinya hati, adalah tidak adanya perasaan sedih atas kesempatan beramal yang engkau lewatkan dan tidak adanya penyesalan atas pelanggaran yang engkau lakukan."',
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            height: 20,
            width: double.infinity,
            child: Text(
              "~  Ibnu Athaillah",
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontStyle: FontStyle.italic,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
