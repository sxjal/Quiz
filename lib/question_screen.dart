import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Column(
      children: [
        SizedBox(
          height: .2 * MediaQuery.of(context).size.height,
        ),
        const Text("sajal"),
        SizedBox(
          height: .17 * MediaQuery.of(context).size.height,
        ),
        Row(
          children: [
            //answer 1
            ElevatedButton(onPressed: () {}, child: const Text("Answer 1")),
            //answer 2
            ElevatedButton(onPressed: () {}, child: const Text("Answer 1")),
          ],
        ),
        Row(
          children: [
            //answer 3
            ElevatedButton(onPressed: () {}, child: const Text("Answer 3")),
            //answer 4
            ElevatedButton(onPressed: () {}, child: const Text("Answer 4")),
          ],
        ),
      ],
    );
  }
}
