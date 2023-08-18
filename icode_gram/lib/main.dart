import 'package:flutter/material.dart';
import 'package:icode_gram/screens/home_screen.dart';
import 'package:icode_gram/screens/login_screen.dart';
import 'package:icode_gram/screens/sign_up.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MaterialApp(
    home: HomeScreen(),
  ));
}
