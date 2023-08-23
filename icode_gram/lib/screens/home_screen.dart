import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icode_gram/screens/story/add_story.dart';

import 'story/watch_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<WatchStory> stories = [const WatchStory(name: 'PoTaTo47')];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'iCodegram',
          style: TextStyle(
              fontFamily: 'Lobster',
              color: Colors.white,
              fontSize: 25.6,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          AddStory(),
          SizedBox(
            width: 86 * 5,
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return WatchStory(name: 'PoTaTo47');
                }),
          )
        ],
      ),
    );
  }
}
