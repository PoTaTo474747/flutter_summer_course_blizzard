import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icode_gram/screens/profile/add_profile_photo.dart';

class ProfileScreen extends StatelessWidget {
  final String userName;

  const ProfileScreen({
    super.key,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 279,
      ),
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Text(
              'iCodegram',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  color: Colors.white,
                  fontSize: 25.6,
                  fontWeight: FontWeight.w400),
            ),
            AddProfilePhoto(),
            Column(
              children: [Text('Mungunuu'), Text('follower'), Text('post')],
            )
          ],
        )),
      ),
    );
  }
}
