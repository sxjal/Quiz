import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  QuestionSummary(this.data, {super.key});
  late List<Map<String, Object>> data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: data.map(
          (data) {
            return Row(
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        data['question'] as String,
                      ),
                      Text(
                        data['asnwered_asnwer'] as String,
                        // style: GoogleFonts.poppins(
                        //   color:
                        //       data['asnwered_asnwer'] == data['correct_answer']
                        //           ? const Color.fromARGB(255, 10, 152, 130)
                        //           : const Color.fromARGB(255, 191, 50, 50),
                        //   fontWeight: FontWeight.w200,
                        // ),
                      ),
                      Text(
                        ((data['correct_answer'] as int) + 1).toString(),
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
      ),
    );
  }
}
