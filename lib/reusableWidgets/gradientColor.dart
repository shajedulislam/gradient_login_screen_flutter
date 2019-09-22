import 'package:flutter/material.dart';

class GradientColor {
  static getGradientColor() {
    return LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: <Color>[
        Colors.deepPurple.withOpacity(0.8),
        Colors.purple.withOpacity(0.7),
        Colors.pink.withOpacity(0.7),
        Colors.red.withOpacity(0.7),
        Colors.orange.withOpacity(0.7),
      ],
    );
  }
}
