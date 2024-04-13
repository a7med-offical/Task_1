import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
      width: 280,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'Field is required ';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 26),
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
          hintText: text,
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
