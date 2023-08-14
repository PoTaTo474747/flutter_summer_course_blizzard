import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'iCodegram',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  color: Colors.white,
                  fontSize: 35.5,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      )),
    );
  }
}
