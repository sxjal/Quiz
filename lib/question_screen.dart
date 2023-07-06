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
          //generating buttons dynamically using the list and spread operator.
          ...currentquestion.answers.map((value) {
            return AnswerButton(buttontext: value, onTap: () {});
          }),
        ],
      ),
    );
  }
}
