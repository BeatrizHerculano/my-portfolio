import 'package:flutter/material.dart';

class ShadowPainter extends CustomPainter {
  ShadowPainter(this.shadow, this.clipper);

  final Shadow shadow;
  final CustomClipper<Path> clipper;

  @override
  void paint(Canvas canvas, Size size) {
    var paint = shadow.toPaint();
    var clipPath = clipper.getClip(size);
    canvas.drawPath(clipPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
