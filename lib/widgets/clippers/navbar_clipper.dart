import 'package:flutter/material.dart';

class CustomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);

    path.quadraticBezierTo(
        size.width * 0.375, 0, size.width * 0.375, size.height * 0.1);

    path.cubicTo(size.width * 0.4, size.height * 0.9, size.width * 0.6,
        size.height * 0.9, size.width * 0.625, size.height * 0.1);

    path.quadraticBezierTo(size.width * 0.625, 0, size.width * 0.7, 0.1);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
