import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double iconSize;
  Logo(this.iconSize);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize,
      height: iconSize,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/circleLogo.png'),
            fit: BoxFit.cover),
      ),
    );
  }
}
