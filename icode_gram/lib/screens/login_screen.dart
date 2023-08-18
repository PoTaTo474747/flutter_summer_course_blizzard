import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icode_gram/resources/auth_method.dart';

import '../compoment/text_feild.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    setState(() {
      _isLoading = true;
    });
    String result = await AuthMethods().loginUser(
      email: _emailController.text,
      password: _passwordController.text,
    );

    if (result == 'success') {
      print('Logged in');
      setState(() {
        _isLoading=false;
      });

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      _isLoading = false;

      print('Not logged in');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 2, child: Container()),
              Text(
                'iCodegram',
                style: TextStyle(
                    fontFamily: 'Lobster',
                    color: Colors.white,
                    fontSize: 35.5,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 64),
              TextFeildInput(
                hintText: "Enter you're email",
                isPassword: false,
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 25,
              ),
              TextFeildInput(
                hintText: "Enter you're password",
                isPassword: true,
                textEditingController: _passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 64,
              ),
              InkWell(
                  onTap: () {
                    loginUser();
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: ShapeDecoration(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    child: _isLoading
                        ? Center(
                            child:
                                CircularProgressIndicator(color: Colors.white))
                        : Text('Enter'),
                  )),
              SizedBox(
                height: 12,
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
