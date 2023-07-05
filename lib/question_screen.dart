import 'package:flutter/material.dart';
import 'package:quizapp/buttonstyle.dart';
import 'package:quizapp/model/quiz_question.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "sajal",
            style: TextStyle(
              fontSize: 22,
              color: Color.fromARGB(255, 194, 188, 188),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //answer 1
              AnswerButton(buttontext: "Answer 1", onTap: () {}),
              //answer 2const SizedBox(
              const SizedBox(
                width: 20,
              ),
              AnswerButton(buttontext: "Answer 2", onTap: () {}),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //answer 3
              AnswerButton(buttontext: "Answer 3", onTap: () {}),
              //answer 4
              const SizedBox(
                width: 20,
              ),
              AnswerButton(buttontext: "Answer 4", onTap: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
