import 'package:flutter/material.dart';

class HexagonCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addPolygon([
      Offset(size.width * 0.5, 0),
      Offset(size.width, size.height * 0.25),
      Offset(size.width, size.height * 0.75),
      Offset(size.width * 0.5, size.height),
      Offset(0, size.height * 0.75),
      Offset(0, size.height * 0.25),
      Offset(size.width * 0.5, 0),
    ], true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
