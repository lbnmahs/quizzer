import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzer/data/questions.dart';
import 'package:quizzer/question_summary.dart';

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
    final totalQuestions = questions.length;
    final summaryData = getSummaryAnswers();
    final gottenQuestions = summaryData.where((data) {
      return data['chosen_answer'] == data['correct_answer'];
    });

    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You have gotten $gottenQuestions out of $totalQuestions questions',
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(height: 30),
            QuestionSummary(summaryData),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
