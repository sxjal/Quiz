import 'package:flutter/material.dart';
import 'package:quizapp/buttonstyle.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  final currentquestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //padding : const EdgeInsets.all(20),
        children: [
          Text(
            currentquestion.text,
            style: const TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 194, 188, 188),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //answer 1
              AnswerButton(
                  buttontext: currentquestion.answers[0], onTap: () {}),

              AnswerButton(
                  buttontext: currentquestion.answers[1], onTap: () {}),
              //answer 3
              AnswerButton(
                  buttontext: currentquestion.answers[2], onTap: () {}),
              //answer 4
              AnswerButton(
                  buttontext: currentquestion.answers[3], onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
