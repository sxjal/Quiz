import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map(
        (data) {
          return Row(
            children: [
              //Text(((data['question_index'] as int) + 1).toString()),
              Text(((data['question_index'] as int) + 1).toString()),

              Expanded(
                child: Column(
                  children: [
                    //Text(data['question'] as String),
                    Text(data['question'] as String),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['answered_answer'] as String
                        // style: GoogleFonts.poppins(
                        //   color:
                        //       data['asnwered_asnwer'] == data['correct_answer']
                        //           ? const Color.fromARGB(255, 10, 152, 130)
                        //           : const Color.fromARGB(255, 191, 50, 50),
                        //   fontWeight: FontWeight.w200,
                        // ),
                        ),
                    Text(
                      data['correct_answer'] as String,
                      // style: GoogleFonts.poppins(
                      //   color: const Color.fromARGB(255, 10, 152, 130),
                      //   fontWeight: FontWeight.w200,
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
