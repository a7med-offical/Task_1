import 'package:app/Constant/Color.dart';
import 'package:app/Widget/Naviagtor_circleAvatar.dart';
import 'package:app/Widget/custom_TextFromField.dart';
import 'package:app/Widget/underline_text.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  final GlobalKey<FormState> key = GlobalKey();
  static String id = '0';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: Scaffold(
        backgroundColor: KprimaryColor,
        body: ListView(
          children: [
            Container(height: 40, width: double.infinity, color: KtopColor),
            Stack(
              children: [
                Container(
                  height: 240,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: KtopColor,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(500)),
                  ),
                ),
                const Positioned(
                  top: -10,
                  left: 15,
                  child: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white, size: 30),
                  ),
                ),
                const Positioned(
                  top: 100,
                  left: 40,
                  child: Text('Create\nAccount ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35)),
                ),
              ],
            ),
            for (var field in ['Name', 'Your Email', 'Password'])
              CustomTextField(text: field),
            const SizedBox(height:20),
            Stack(
              children: [
                const Positioned(
                  left: 35,
                  top: 3,
                  child: Text('Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      height: 188,
                      width: 180,
                      decoration: const BoxDecoration(
                          color: KbottomColor,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(400))),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 40,
                  child: GestureDetector(
                    onTap: () => key.currentState!.validate()
                        ? Navigator.pushNamed(context, 'SignInView')
                        : null,
                    child: const NavigatorCircleAvatar(),
                  ),
                ),
                const Positioned(
                    bottom: 60,
                    right: 35,
                    child: UnderlineText(color: Colors.blue, text: 'Sign In')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
