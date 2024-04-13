import 'package:app/Constant/Color.dart';
import 'package:flutter/material.dart';

class ClipPathExample extends StatelessWidget {
  const ClipPathExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: 300,
          color: KtopColor,
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height - 100)
      ..quadraticBezierTo(
          size.width / 2, size.height, size.width, size.height - 100)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
