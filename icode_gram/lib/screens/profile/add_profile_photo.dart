import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddProfilePhoto extends StatefulWidget {
  const AddProfilePhoto({super.key});

  @override
  State<AddProfilePhoto> createState() => _AddProfilePhotoState();
}

class _AddProfilePhotoState extends State<AddProfilePhoto> {
  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: 86,
      height: 94,
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                border: Border.all(color: Colors.white70, width: 2)),
            child: TextButton(
              onPressed: () {},
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 25,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
