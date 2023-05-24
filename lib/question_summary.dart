import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView( 
        child: Column(
          children: summaryData.map((data) {
            return Container(
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: (data['chosen_answer'] as String) == (data['correct_answer'] as String)
                        ? Colors.green
                        : Colors.red,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (data['question'] as String),
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16
                          ),
                        ),
                        const SizedBox(height: 5,),
                        Text(
                          (data['chosen_answer'] as String),
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: (data['chosen_answer'] as String) == (data['correct_answer'] as String)
                              ? Colors.lightGreen[900]
                              : Colors.red[700],
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        const SizedBox(height: 3,),
                        Text(
                          (data['correct_answer'] as String),
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.lightGreen[900],
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ],
                    )
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
