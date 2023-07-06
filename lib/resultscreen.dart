// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/questionsummary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.usersanswers});
  final List<String> usersanswers;

  List<Map<String, Object>> getsummarydata() {
    List<Map<String, Object>> data = [];
    for (int i = 0; i < usersanswers.length; i++) {
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
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 2,
          ),
          Text(
            "Result",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          QuestionSummary(data: getsummarydata()),
          OutlinedButton.icon(
            onPressed: () {
              //changestate();
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
    );
  }
}
