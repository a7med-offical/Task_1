
import 'package:app/Constant/Color.dart';
import 'package:flutter/material.dart';

class NavigatorCircleAvatar extends StatelessWidget {
  const NavigatorCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: KcircleColor,
      child: Icon(Icons.arrow_forward, color: Colors.white),
    );
  }
}