import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:icode_gram/resources/auth_method.dart';
import 'package:image_picker/image_picker.dart';

import '../component/text_field.dart';
import '../untils/untils.dart';
import 'login_screen.dart';

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
  Uint8List? _image;

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _userController.dispose();
    _rePasswordController.dispose();
  }

  selectImage() async {
    Uint8List image = await
    pickImage(ImageSource.gallery);
    setState(
      () {
        _image = image;
      },
    );
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
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 64, backgroundImage: MemoryImage(_image!))
                      : CircleAvatar(
                          radius: 64,
                          backgroundImage: NetworkImage(
                              'https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png'),
                        ),
                  Positioned(
                    bottom: -10,
                    left: 80,
                    child: IconButton(
                      icon: Icon(Icons.add_a_photo),
                      onPressed: () {
                        selectImage();
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              TextFieldInput(
                hintText: 'Email ',
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 25,
              ),
              TextFieldInput(
                hintText: 'User name',
                isPassword: false,
                textEditingController: _userController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 25,
              ),
              TextFieldInput(
                hintText: 'Password',
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 25,
              ),
              TextFieldInput(
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen())),
                  AuthMethods().signUpUser(
                      email: _emailController.text,
                      password: _passwordController.text,
                      username: _userController.text,
                      file: null)
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
                      color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 90,
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
