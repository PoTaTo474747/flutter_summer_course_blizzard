import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    'money',
    'tomato',
    'potato',
    'funny',
    'sad',
    'worthless',
    'useless',
    'pity',
    'truth',
    'happy',
    'enjoy',
    'pretty',
    'cute',
    'however',
    'sunny',
    'rainy',
    'yellow',
    'eyes',
    'hand',
    'lips',
    'head',
    'cat',
    'sims4',
    'yahoo',
    'dog',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              width: 50,
              color: Colors.yellow,
              child: Text(names[index]),
            );
          }),
    );
  }
}
