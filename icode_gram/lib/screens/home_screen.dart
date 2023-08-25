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
   List<Widget> stories = [
    AddStory(),
    WatchStory(name: 'PoTaTo47'),
    WatchStory(name: 'Сараа'),
    WatchStory(name: 'Ханхүү'),
    WatchStory(name: 'Мишээл'),
    WatchStory(name: 'Хулан'),

  ];

   List<Widget> posts = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black,
            title: Text(
            'iCodegram',
            style: TextStyle(
                fontFamily: 'Lobster',
                color: Colors.white,
                fontSize: 25.6,
                fontWeight: FontWeight.w400),
          ),),
          SliverList(delegate: SliverChildListDelegate([
            SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context,index){
                    return stories[index];
              }),
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (cotext, index){
              return posts[index];
            }, separatorBuilder: (context, index) => const SizedBox(height: 10,), itemCount: posts.length)
          ]))

        ],
      ),
    );
  }
}


// ListView(
// scrollDirection: Axis.horizontal,
// children: [
// AddStory(),
// SizedBox(
// width: 86 * 5,
// height: 130,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: 8,
// itemBuilder: (context, index) {
// return WatchStory(name: 'PoTaTo47');
// }),
// )
// ],
// ),
