import 'package:flutter/material.dart';

class ContainerBox {
  static getBoxDecoration({
    Color shadowColor,
    double blurRadius,
    BorderRadius borderRadius,
  }) {
    return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: shadowColor,
          blurRadius: blurRadius,
        ),
      ],
      borderRadius: borderRadius,
    );
  }
}
