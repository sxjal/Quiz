import 'package:flutter/material.dart';
import 'package:quizapp/screen.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/background.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizApp/resultScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activescreen;
  final List<String> usersanswers = [];
  // int score = 0;
  /*
  If I may not wanna use this thing I cal also use this thing
  var activescreen = 'mainscreen';

  void changestate() {
    setState(() {
      activescreen = 'questionscreen';
    });
    //and then make the changes to the on pressed button/
  */
  @override
  void initState() {
    activescreen = Screen(changestate);
    super.initState();
  }

  void adduseranswer(String value) {
    usersanswers.add(value);
  }

  void changestate() {
    if (usersanswers.length == questions.length) {
      setState(() {
        activescreen = resultScreen(changestate);
      });
    } else {
      setState(() {
        activescreen = QuestionScreen(onSelectAnswer: adduseranswer);
      });
    }
  }

  @override
  Widget build(context) {
    //we could even  add this thing here
    /*
    final currentscreen = activescreen == Screen(changestate) 
    ? Screen(changestate) 
    : const QuestionScreen();
    */

    return Background(activescreen);
  }
}
    // return MaterialApp(
    //   home: Scaffold(
    //     body: Container(
    //       decoration: const BoxDecoration(
    //         gradient: LinearGradient(
    //           begin: Alignment.bottomRight,
    //           end: Alignment.topLeft,
    //           colors: [
    //             Color.fromARGB(255, 124, 74, 199),
    //             Color.fromARGB(255, 82, 46, 130),
    //           ],
    //         ),
    //       ),
    //       child: activescreen,
    //       //use child: currentscreen,
    //       //or maybe use
    //       //child: activescreen == 'mainscreen'
    //       //? Screen(changestate)
    //       //: const QuestionScreen(),
    //     ),
    //   ),
    // );
 