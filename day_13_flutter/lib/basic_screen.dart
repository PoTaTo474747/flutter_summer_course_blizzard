import 'package:day_13_flutter/immutable_widget.dart';
import 'package:flutter/material.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("My Flutter App"),
        actions: [
          Padding(padding: EdgeInsets.all(10.0), child: Icon(Icons.edit))
        ],
      ),
      body: const Center(
        child: AspectRatio(
          aspectRatio: 1.0,
          child: ImmutableWidget(),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: (Colors.purple),
          child: Text("I'm a drawer"),
        ),
      ),
    );
  }
}
