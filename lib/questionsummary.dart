import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.data, {super.key});
  final List<Map<String, Object>> data;

  @override
  Widget build(context) {
    return Column(
      children: data.map(
        (e) {
          return Row(
            children: [
              Text(
                ((e['question_index'] as int) + 1).toString(),
              ),
              Column(
                children: [
                  Text(
                    e['question'] as String,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    e['asnwered_asnwer'] as String,
                    style: GoogleFonts.poppins(
                      color: e['asnwered_asnwer'] == e['correct_answer']
                          ? const Color.fromARGB(255, 10, 152, 130)
                          : const Color.fromARGB(255, 191, 50, 50),
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    ((e['correct_answer'] as int) + 1).toString(),
                    style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 10, 152, 130),
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}
