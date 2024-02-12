import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0008333, size.height * 0.0014286);
    path_0.lineTo(0, size.height * 0.6414286);
    path_0.lineTo(size.width * 0.5008333, size.height * 0.9985714);
    path_0.lineTo(size.width * 1.0008333, size.height * 0.6400000);
    path_0.lineTo(size.width, size.height * -0.0014286);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
