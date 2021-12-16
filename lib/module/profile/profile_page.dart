import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:sala_app_project/module/auth/signIn_page.dart';
import 'package:sala_app_project/module/auth/widgets/user_model.dart';
import 'package:sala_app_project/module/profile/widgets/avatar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isObscurePassword = true;

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  File? file;
  UploadTask? task;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom: 50),
        padding: EdgeInsets.only(
          left: 15,
          top: 20,
          right: 20,
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Avatar(),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    buildTextField(
                      "${loggedInUser.name}",
                      "Name",
                      false,
                      Icons.person_rounded,
                    ),
                    buildTextField(
                      "${loggedInUser.username}",
                      "Username",
                      false,
                      Icons.list_rounded,
                    ),
                    buildTextField(
                      "${loggedInUser.email}",
                      "Email",
                      false,
                      Icons.email_rounded,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Batal",
                            style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.black,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Simpan",
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontFamily: 'Comfortaa',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            padding: EdgeInsets.symmetric(horizontal: 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () => showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              "Keluar",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            content: Text(
                              "Apakah Anda Yakin Ingin Keluar ?",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  "Batal",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () => logout(context),
                                child: Text(
                                  "Ok",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        child: Text(
                          "Keluar",
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
    String label,
    String placeholder,
    bool isPasswordTextField,
    IconData icons,
  ) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          suffixIcon: isPasswordTextField
              ? IconButton(
                  icon: Icon(
                    Icons.remove_red_eye_rounded,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      isObscurePassword = !isObscurePassword;
                    });
                  },
                )
              : null,
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.black54,
            fontFamily: 'Comfortaa',
          ),
          hintText: placeholder,
          hintStyle: TextStyle(
              color: Colors.white12,
              fontSize: 10,
              fontStyle: FontStyle.italic,
              fontFamily: 'Comfortaa'),
          // border
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(15),
          ),
          // prefix and suffix
          prefixIcon: Icon(
            icons,
            color: Colors.black54,
            size: 18,
          ),
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => SignInPage(),
      ),
    );
  }
}
