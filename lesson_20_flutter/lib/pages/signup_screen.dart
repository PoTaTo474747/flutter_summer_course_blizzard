import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/resources/auth_method.dart';

import '../compoment/text_feild.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _userController.dispose();
    _rePasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'Email ',
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'User name',
                isPassword: false,
                textEditingController: _userController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _rePasswordController,
                textInputType: TextInputType.text,
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
              InkWell(
                onTap: () => {
                  AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _userController.text)
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('Sign up'),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4)),
                      ),
                      color: Colors.blue),
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
