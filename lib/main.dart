import 'package:flutter/material.dart';
import 'package:quizapp/screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 93, 30, 186),
                Color.fromARGB(255, 134, 67, 16),
              ],
            ),
          ),
          child: const Screen(),
        ),
      ),
    ),
  );
}
