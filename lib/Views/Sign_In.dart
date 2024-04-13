import 'package:app/Widget/Naviagtor_circleAvatar.dart';
import 'package:app/Widget/custom_TextFromField.dart';
import 'package:app/Widget/custom_clippath.dart';
import 'package:app/Widget/underline_text.dart';
import 'package:flutter/material.dart';
import 'package:app/Constant/Color.dart';
import 'package:app/Widget/custom_TextFromField.dart';

class SignInView extends StatelessWidget {
   SignInView({super.key});
   final GlobalKey<FormState> key = GlobalKey();
   static String id ='0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: KprimaryColor,
        body: Form(
          key: key,
          child: Column(
            children: [
              Stack(children: [
                Positioned(
                  top: 200,
                  right: 0,
                  child: Container(
                    height: 100,
                    width: 130,
                    decoration: const BoxDecoration(
                      color: KbottomColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(280),
                      ),
                    ),
                  ),
                ),
                const ClipPathExample(),
                Positioned(
                    child: Container(
                        height: 100,
                        width: 140,
                        decoration: const BoxDecoration(
                          color: KbottomColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(700),
                          ),
                        ))),
                const Positioned(top: 20, left: 20, child: Icon(Icons.arrow_back_ios,color:Colors.white)),
                const Positioned(
                    top: 110,
                    left: 30,
                    child: Text(
                      'Welcome\nBack',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ))
              ]),
              for (var field in ['Your Email', 'Password'])
                CustomTextField(text: field),
              const SizedBox(
                height: 15,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  const Text('Sign Up',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                  GestureDetector( onTap : ()=> key.currentState!.validate() ? Navigator.pushNamed(context, 'SignUpView') : null, child: const NavigatorCircleAvatar()),
                ],
              ),
              const Spacer(
                flex: 2,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  UnderlineText(color: Colors.blue, text: 'Sign In'),
                  UnderlineText(color: Colors.red, text: 'Forget Password'),
                ],
              ),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ));
  }
}
