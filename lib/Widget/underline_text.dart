import 'package:flutter/material.dart';

class UnderlineText extends StatelessWidget {
  const UnderlineText({Key? key, required this.text, required this.color})
      : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 8.0,
            color: color,
          ),
        ),
          Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
