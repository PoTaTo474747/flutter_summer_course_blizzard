import 'package:flutter/material.dart';

void main() {
  print('Day 11 Flutter application');

  const MaterialApp myApp = MaterialApp(
      home: Center(
          child: Text(
    'Hello Blizzard',
    style: TextStyle(
      color: Color(0xFFFFFFFFF),
    ),
  )));

  MaterialApp myNextApp = MaterialApp(
      title: 'World Find Game ',
      theme: ThemeData(fontFamily: 'RibeyeMarrow'),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello Blizzard',
            style: TextStyle(fontSize: 25, color: Color(0x84b534FF)),
          ),
        ),
      ));
  final MyOwnApp temuujin = MyOwnApp();
  runApp(temuujin);
}

class MyOwnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Own App'),
        ),
        body: Container(
          child: Center(
              child: Text(
            'Hello!!',
            style: TextStyle(
              fontSize: 50,
              color: Color(0xfff67850),
              fontFamily: 'Nunito',
            ),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          child: Image.asset(
            ('assets/cat.png'),
          ),
          onPressed: () {
            print('Hello you pressed the button');
          },
        ),
      ),
    );
  }
}
