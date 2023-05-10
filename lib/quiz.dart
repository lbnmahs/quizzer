import 'package:flutter/material.dart';
import 'package:quizzer/quiz_screen.dart';
import 'package:quizzer/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {

  var activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.cyan, Colors.blueGrey],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child: activeScreen == 'start-screen' ? StartScreen(startQuiz) : const QuizScreen()
    );
  }
}
