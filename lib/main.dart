import 'package:flutter/material.dart';
import 'package:quizapp/screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const Screen(),
        ),
      ),
    ),
  );
}
