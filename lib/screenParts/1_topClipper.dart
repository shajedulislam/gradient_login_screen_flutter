import 'package:flutter/material.dart';

class ClipDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurple.withOpacity(0.9),
            Colors.purple.withOpacity(0.8),
            Colors.pink.withOpacity(0.8),
            Colors.red.withOpacity(0.8),
            Colors.orange.withOpacity(0.8),
            //Colors.blue[400],
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
        ),
        height: MediaQuery.of(context).size.height / 2.8,
      ),
    );
  }
}

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // This is where we decide what part of our image is going to be visible.
    var path = Path();
    path.lineTo(0.0, size.height);

    // //creating first curver near bottom left corner
    // var firstControlPoint = new Offset(size.width / 9, size.height - 30);
    // var firstEndPoint = new Offset(size.width / 7, size.height / 1.5);

    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstEndPoint.dx, firstEndPoint.dy);

    // //creating second curver near center
    // var secondControlPoint = Offset(size.width / 4, size.height / 4);
    // var secondEndPoint = Offset(size.width / 2, size.height / 2);

    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);

    //creating third curver near top right corner
    print(size.width / 2 + 100);
    var thirdControlPoint = Offset(size.width / 5, size.height / 5);

    var thirdEndPoint = Offset(size.width, size.height / 5);

    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    ///move to top right corner
    path.lineTo(size.width, 0.0);

    ///finally close the path by reaching start point from top right corner
    path.close();
    return path;
  }

  static const List<Color> orangeGradients = [
    Color(0xFFFF9844),
    Color(0xFFFE8853),
    Color(0xFFFD7267),
  ];

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
