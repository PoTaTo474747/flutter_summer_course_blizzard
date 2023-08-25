import 'package:flutter/material.dart';
import 'package:icode_gram/layouts/screen_layout.dart';
import 'package:icode_gram/screens/home_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:icode_gram/screens/login_screen.dart';
import 'package:icode_gram/screens/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
      textTheme: Typography().white.apply(fontFamily: 'Rubik'),
    ),
    home:SignUp(),
  ));
}
