import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sala_app_project/module/auth/widgets/user_model.dart';

import 'package:path/path.dart';
import 'package:sala_app_project/module/setoran/db/firebase_api.dart';

class Avatar extends StatefulWidget {
  final String? avatarUrl;
  final Function? onPress;

  const Avatar({Key? key, this.avatarUrl, this.onPress}) : super(key: key);

  @override
  _AvatarState createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  File? file;
  UploadTask? task;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(width: 4, color: Colors.white),
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/splash_background.jpg'),
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 4, color: Colors.white),
                color: Colors.redAccent,
              ),
              child: IconButton(
                icon: Icon(Icons.camera_rounded),
                onPressed: () async {
                  // PickedFile? image = await ImagePicker.platform
                  //     .pickImage(source: ImageSource.gallery);
                  // uploadProfilePicture(image!);
                },
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future uploadProfile(File file) async {
    final fileName = basename(file.path);
    final destination = 'user/profile/$fileName';

    task = FirebaseApi.uploadProfile(destination, file);
    setState(() {});

    if (task == null) return;
    final snapshot = await task!.whenComplete(() {});
    final urlDownload = await snapshot.ref.getDownloadURL();

    return urlDownload;
  }

  Future<void> uploadProfilePicture(PickedFile image) async {
    loggedInUser.avatarUrl = await uploadProfile(file!);
  }

  uploadPhotoProfile() async {}
}
