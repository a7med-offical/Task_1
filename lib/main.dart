import 'package:app/Views/Sign_In.dart';
import 'package:app/Views/Sign_Up.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Task_1());
}

class Task_1 extends StatelessWidget {
  const Task_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'SignInView' : (context)=> SignInView(),
        'SignUpView' :(context)=> SignUpView(),
        },
      initialRoute: 'SignUpView',
          // home :SignInView()
    );
  }
}
