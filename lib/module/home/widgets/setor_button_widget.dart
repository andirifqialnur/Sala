import 'package:flutter/material.dart';
import 'package:sala_app_project/module/setoran/view/home_view.dart';

class SetorButtonWidget extends StatelessWidget {
  const SetorButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sudahkah setor hafalan mu?",
              style: TextStyle(fontFamily: 'Comfortaa')),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            child: Text(
              "Yuk Setor",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2,
                fontFamily: 'Comfortaa',
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.redAccent,
              padding: EdgeInsets.symmetric(horizontal: 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
