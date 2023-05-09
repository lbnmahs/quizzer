import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [ Colors.cyan, Colors.blueGrey ],
          begin: Alignment.topLeft,
          end:  Alignment.bottomRight
        )
      ),
      child: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/quiz-logo',
              width: 250,
              color: const Color.fromARGB(106, 255, 255, 255),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 5),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                )
              ),
              child: Row(
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
