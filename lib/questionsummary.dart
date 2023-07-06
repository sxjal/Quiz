import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text(((data['question_index'] as int) + 1).toString()),
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: GoogleFonts.poppins(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Text(data['question'] as String),
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(179, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 1, 255, 217),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          data['answered_answer'] as String,
                          style: GoogleFonts.poppins(
                            color: data['answered_answer'] ==
                                    data['correct_answer']
                                ? const Color.fromARGB(255, 203, 217, 12)
                                : const Color.fromARGB(255, 111, 229, 0),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
