import 'package:flutter/cupertino.dart';

class WatchStory extends StatefulWidget {
  final String name;
  const WatchStory({super.key, required this.name});

  @override
  State<WatchStory> createState() => _WatchStoryState();
}

class _WatchStoryState extends State<WatchStory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 85,
        height: 104,
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: ClipOval(
                child: Image.asset('assets/images/Inner.png'),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(widget.name),
          ],
        ),
      ),
    );
  }
}
