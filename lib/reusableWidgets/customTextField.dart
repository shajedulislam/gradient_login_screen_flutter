import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  final double defFontSize;

  CustomTextField(this.defFontSize, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: TextField(
        style: TextStyle(
            fontSize: defFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide:
                BorderSide(width: 0, color: Colors.white.withOpacity(0.2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide:
                BorderSide(width: 0, color: Colors.white.withOpacity(0.2)),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
