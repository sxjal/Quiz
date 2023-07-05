import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.buttontext,
    required this.onTap,
  });

  final String buttontext;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 115, 67, 226),
        //foregroundColor: Colors.red,
        //maximumSize: const Size(150, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: Text(
        buttontext,
        style: const TextStyle(
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
