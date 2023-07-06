// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questionsummary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.restart, {super.key, required this.usersanswers});
  final List<String> usersanswers;
  final void Function() restart;
  List<Map<String, Object>> getsummarydata() {
    List<Map<String, Object>> data = [];

    for (var i = 0; i < usersanswers.length; i++) {
      data.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'answered_answer': usersanswers[i]
      });
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    final totalquestions = questions.length;
    final summaryvariables = getsummarydata();
    final correctanswers = summaryvariables.where((data) {
      return data['correct_answer'] == data['answered_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have answered $correctanswers out of $totalquestions questions correctly",
              style: GoogleFonts.poppins(
                shadows: const <Shadow>[
                  Shadow(
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10.0,
                    color: Color.fromARGB(131, 35, 35, 35),
                  ),
                  // Shadow(
                  //   offset: Offset(10.0, 10.0),
                  //   blurRadius: 8.0,
                  //   color: Color.fromARGB(125, 0, 0, 255),
                  // ),
                ],
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(getsummarydata()),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {
                //changestate();
                restart();
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 189, 188, 188),
                //backgroundColor: Color.fromARGB(255, 125, 83, 180),
              ),
              icon: const Icon(
                Icons.restart_alt_sharp,
                color: Color.fromARGB(255, 189, 188, 188),
              ),
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 189, 188, 188),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
