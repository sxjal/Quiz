import 'package:flutter/material.dart';
import 'package:quizapp/Screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
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
          child: const Screen(),
        ),
      ),
    );
  }
}
