import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'iCodegram',
                        style: TextStyle(
                            fontFamily: 'Lobster',
                            color: Colors.white,
                            fontSize: 25.6,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/Inner Oval.svg',
                            width: 70,
                            height: 70,
                          ),
                          Stack(
                            children: [
                              Container(
                                width: 18,
                                height: 18,
                              )
                            ],
                          )

                        ],


                      ),
                    ]
                ))));
  }
}
