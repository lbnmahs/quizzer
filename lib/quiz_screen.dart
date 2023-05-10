import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<QuizScreen> {
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
      child: const Center(child: Text('Your Question'))
    );
  }
}
