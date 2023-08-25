import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icode_gram/screens/add_post_screen.dart';
import 'package:icode_gram/screens/home_screen.dart';
import 'package:icode_gram/screens/profile/profile_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void navigationTapped(int page) {
      pageController.jumpToPage(page);
    }

    void onPageChanged(int page) {
      setState(() {
        _page = page;
      });
    }

    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: [
            HomeScreen(),
            AddPostScreen(),
            ProfileScreen(userName: '', ),
          ],
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _page == 0 ? Colors.orange : Colors.black,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: _page == 1 ? Colors.orange : Colors.black,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_mail_outlined,
              color: _page == 2 ? Colors.orange : Colors.black,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}