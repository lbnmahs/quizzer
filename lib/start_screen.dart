import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ Colors.cyan, Colors.blueAccent ],
          begin: Alignment.topLeft,
          end:  Alignment.bottomRight
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(106, 255, 255, 255),
            ),
            const SizedBox(height: 50),
            Text(
              'Welcome to Quizzer',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'A fun way to learn coding!',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 224, 224, 224),
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: startQuiz,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                backgroundColor: const Color.fromARGB(255, 224, 145, 41),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text('Start Quiz'),
                  SizedBox(width: 15),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
