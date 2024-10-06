import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Moolat"),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.amberAccent,
        padding: const EdgeInsets.all(10),
        child: const Text("OnBoarding"),
      ),
    );
  }
}
