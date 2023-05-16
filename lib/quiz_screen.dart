import 'package:flutter/material.dart';
import 'package:quizzer/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen(this.onAnswerSelect, {super.key});

  final void Function(String answer) onAnswerSelect;

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
  var currentQuestionIndex = 0;

  void answerSelect(String answer) {
    widget.onAnswerSelect(answer);
    setState(() {
      currentQuestionIndex++;
    });
  }
  @override
  Widget build(context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purpleAccent, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map((answer){
              return AnswerButton(
                answer, 
                (){
                  answerSelect(answer);
                }
              );
            })
          ],
        )
      )
    );
  }
}

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onTap, {super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return  ElevatedButton(
      onPressed: onTap, 
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        
      ),
      child: Text(
        answerText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400
        ),
      )
    );
  }
}
