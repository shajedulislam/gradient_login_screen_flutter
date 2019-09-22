import 'package:flutter/material.dart';
import 'package:gradient_login_screens/reusableWidgets/gradientColor.dart';

class GradientRaisedButton extends StatelessWidget {
  final double fontSize;

  GradientRaisedButton(this.fontSize);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: GradientColor.getGradientColor(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: RaisedButton(
        color: Colors.transparent,
        highlightColor: Colors.pink.withOpacity(0.3),
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        splashColor: Colors.white.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          // Perform some action
        },
      ),
    );
  }
}
