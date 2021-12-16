import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  const FormWidget({
    required this.labels,
    required this.hints,
    required this.icons,
    this.sufIcons,
  });

  final String labels;
  final String hints;
  final IconData icons;
  final IconData? sufIcons;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // filled: true,
        // icon inside the box
        border: OutlineInputBorder(),
        // prefixText: "Name: ",
        // prefixIcon: Icon(Icons.male_rounded),
        labelText: labels,
        labelStyle: TextStyle(color: Colors.black54),
        hintText: hints,
        hintStyle: TextStyle(color: Colors.black54),
        // border
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(15),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        // prefix and suffix
        prefixIcon: Icon(
          icons,
          color: Colors.black54,
          size: 18,
        ),
        suffixIcon: Icon(
          sufIcons,
          size: 18,
          color: Colors.orange,
        ),
      ),
    );
  }
}
