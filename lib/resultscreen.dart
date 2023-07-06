import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '';
class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.usersanswers});
  final List<String> usersanswers;
  @override
  State<StatefulWidget> createState() {
    return _ResultScreenState();
  }
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            "Result",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
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
