import 'package:flutter/material.dart';

import '../compoment/text_feild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
    _userController.dispose();
    _rePasswordController.dispose();
  }

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
              Flexible(
                flex: 2,
                child: Container(),
              ),
           Text(
            'iCodegram',
            style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.white,
                fontSize: 35.5,
                fontWeight: FontWeight.w400
            ),
           ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(

                hintText: 'Phone number',
                isPassword: false,
                textEditingController: _phoneNumberController,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'User name',
                isPassword: false,
                textEditingController: _userController,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _passwordController,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _rePasswordController,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('Sign up',

                  ),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
