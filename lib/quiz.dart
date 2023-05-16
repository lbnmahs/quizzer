import 'package:flutter/material.dart';
import 'package:quizzer/data/questions.dart';
import 'package:quizzer/quiz_screen.dart';
import 'package:quizzer/results_screen.dart';
import 'package:quizzer/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> allAnswers = [];
  var activeScreen = 'start-screen';

  void startQuiz() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void answerTap (String answer) {
    allAnswers.add(answer);
    if(allAnswers.length == questions.length) {
      setState(() {
        allAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(startQuiz);
    if (activeScreen == 'quiz-screen') {
      screenWidget = QuizScreen(answerTap);
    }
    if(activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(allAnswers);
    }
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.cyan, Colors.blueGrey],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      child: screenWidget
    );
  }
}
