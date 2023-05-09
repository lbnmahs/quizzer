import 'package:flutter/material.dart';
import 'package:quizzer/quiz.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Quizzer',
      home: Scaffold(
        body: Quiz()
      )
    )
  );
}


