import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/models/questions.dart';
import 'package:quizapp/screens/splash.dart';
import '../models/choieces.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionsIndex;
  final Function(int s) answerQuestion;

  quiz(this.question, this.questionsIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: <
        Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Image.asset(
              'flutter_logo.png',
              fit: BoxFit.cover,
              width: 150,
              height: 150,
            ),
          ),
        ),
      ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            questions(
              question[questionsIndex]['questionText'].toString(),
            ),
          ],
        ),
      ),
      ...(question[questionsIndex]['choieces'] as List<Map<String, Object>>)
          .map((answer1) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            choieces(
                () => answerQuestion(int.parse((answer1['score'].toString()))),
                answer1['text'].toString()),
          ],
        );
      }).toList(),
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$questionsIndex of 10',
              style: GoogleFonts.balsamiqSans(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => const splash()),
                  );
                }),
          ],
        ),
      ),
    ]);
  }
}
