import 'package:flutter/material.dart';
import 'stop_watch.dart';
import 'flex_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    body: StopWatch(),
  )));
}

class StopWatchApp extends StatelessWidget {
  const StopWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StopWatch();
  }
}
