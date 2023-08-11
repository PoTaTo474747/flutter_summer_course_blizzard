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
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 160, right: 114, left: 113)),
            Column(
              children: [
                Text(
                  'iCodegram',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    color: Colors.white,
                    fontSize: 35.5,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),

                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  'Or',
                ),
                Image.asset(
                  'assets/Line.png',
                  width: 129,
                  height: 1,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding:EdgeInsets.only(bottom: 500)),
                Text(
                  'New here?',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sign up',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ],
        ),
      ),


    );
  }
}
