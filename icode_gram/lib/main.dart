import 'package:flutter/material.dart';
import 'package:icode_gram/pages/sign_up.dart';

import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(const MaterialApp(
    home: SignUp(),
  ));
}
