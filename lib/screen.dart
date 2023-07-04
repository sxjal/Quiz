import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});
  final String imageface = 'assets/images/quiz-logo.png';
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: .2 * MediaQuery.of(context).size.height,
          ),
          Opacity(
            opacity: 1.00,
            child: Image.asset(
              imageface,
              width: 350,
              color: const  Color.fromARGB(147, 255, 255, 255),
              height: 350,
            ),
          ),
          SizedBox(
            height: .17 * MediaQuery.of(context).size.height,
          ),
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 189, 188, 188),
              //backgroundColor: Color.fromARGB(255, 125, 83, 180),
            ),
            icon: const Icon(
              Icons.play_arrow,
              color: Color.fromARGB(255, 189, 188, 188),
            ),
            label: const Text(
              'Start Quiz',
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
