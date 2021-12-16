import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'cloud_record_list_view.dart';
import 'feature_buttons_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Reference> references = [];

  @override
  void initState() {
    super.initState();
    _onUploadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                bottom: 20,
              ),
              child: Text(
                "Setoran Hafalan",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: references.isEmpty
                  ? Center(
                      child: Text(
                        'No File uploaded yet',
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    )
                  : CloudRecordListView(
                      references: references,
                    ),
            ),
            Expanded(
              flex: 1,
              child: FeatureButtonsView(
                onUploadComplete: _onUploadComplete,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Tekan Tombol diatas untuk merekam",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onUploadComplete() async {
    FirebaseStorage firebaseStorage = FirebaseStorage.instance;
    ListResult listResult =
        await firebaseStorage.ref().child('upload-voice-firebase').list();
    setState(() {
      references = listResult.items;
    });
  }
}
