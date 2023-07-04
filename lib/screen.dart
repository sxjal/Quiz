import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});
  final String imageface = 'assets/images/quiz-logo.png';
  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            imageface,
            width: 200,
            height: 200,
          ),
        ],
      ),
    );
  }
}
