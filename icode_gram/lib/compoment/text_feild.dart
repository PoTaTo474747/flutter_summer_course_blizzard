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
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: this.hintText,
        border:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        focusedBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: this.textInputType,
      obscureText: this.isPassword,
    );
  }
}
