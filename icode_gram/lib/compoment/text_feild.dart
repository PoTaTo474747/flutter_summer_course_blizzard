import 'package:flutter/material.dart';

class TextFeildInput extends StatelessWidget {
  final String hintText;

  final bool isPassword;
  final TextEditingController textEditingController;

  final TextInputType textInputType;

  const TextFeildInput(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.isPassword,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),

      controller: textEditingController,
      decoration: InputDecoration(
        hintText: this.hintText,
        hintStyle: TextStyle(
          color: Colors.white70,
        ),
        // border: OutlineInputBorder(
        //   borderSide: BorderSide(
        //       width: 1, color: Colors.lime, style: BorderStyle.solid),
        // ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, color: Colors.white70, style: BorderStyle.solid),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              width: 1, color: Colors.white70, style: BorderStyle.solid),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: this.textInputType,
      obscureText: this.isPassword,
    );
  }
}
