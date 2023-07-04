import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background(this.activescreen, {super.key});

  final Widget activescreen;

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                Color.fromARGB(255, 124, 74, 199),
                Color.fromARGB(255, 82, 46, 130),
              ],
            ),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
