import 'package:flutter/material.dart';
import 'package:quizzer/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, {super.key});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryAnswers() {
    final List<Map<String, Object>> summary = [];
    for(var i = 0; i < chosenAnswers.length; i ++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'chosen_answer': chosenAnswers[i]
      });
    }
    return summary;
  }
  

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('You have gotten X out of Y questions')
          ],
        ),
      ),
    );
  }
}
