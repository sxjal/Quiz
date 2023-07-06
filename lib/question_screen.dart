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
  var currentquestionindex = 0;
  var currentquestion = questions[0];
  List<String> usersanswers = [];
  int score = 0;

  void changequestion() {
    currentquestionindex += 1;
    setState(() {
      currentquestion = questions[currentquestionindex];
    });
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          //padding : const EdgeInsets.all(20),
          children: [
            Text(
              currentquestion.text,
              style: const TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 234, 226, 226),
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            //generating buttons dynamically using the list and spread operator.
            ...currentquestion.shuffledlist().map((value) {
              return AnswerButton(
                  buttontext: value,
                  onTap: () {
                    changequestion();
                    usersanswers.add(value);
                    if (usersanswers[currentquestionindex - 1] ==
                        currentquestion.answers[0]) {
                      score += 1;

                      print("score");
                    }
                  });
            }),
          ],
        ),
      ),
    );
  }
}
