import 'package:flutter/material.dart';
import 'package:quizapp/screens/quiz.dart';
import 'package:quizapp/screens/result.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _totalScore = 0;
  int _questionsIndex = 0;
  int num0 = 0, num1 = 0, num2 = 0;

  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
      num0 = 0;
      num1 = 0;
      num2 = 0;
    });
  }

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex += 1;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s Flutter ?',
      'choieces': [
        {'text': 'Programming Language', 'score': 0},
        {'text': 'SDK', 'score': 1},
        {'text': 'Both', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      'questionText':
          'A notable feature of the Dart platform is it doesn\'t support for '
              'hot reload',
      'choieces': [
        {'text': 'False', 'score': 1},
        {'text': 'True', 'score': 0},
      ],
    },
    {
      'questionText':
          'Flutter is an __________ mobile application development framework created by Google.',
      'choieces': [
        {'text': 'Open-source', 'score': 1},
        {'text': 'Shareware', 'score': 0},
        {'text': 'Both', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ],
    },
    {
      'questionText':
          'Flutter apps are written in the __________ language and make use of many of the language\'s more advanced features',
      'choieces': [
        {'text': 'C', 'score': 0},
        {'text': 'Dart', 'score': 1},
        {'text': 'C++', 'score': 0},
        {'text': 'Swift', 'score': 0},
      ],
    },
    {
      'questionText': 'Flutter is developed by Facebook.',
      'choieces': [
        {'text': 'True', 'score': 0},
        {'text': 'False', 'score': 1},
      ],
    },
    {
      'questionText': 'What are the advantages of Flutter?',
      'choieces': [
        {'text': 'Cross-platform Development', 'score': 0},
        {'text': 'Faster Development', 'score': 0},
        {'text': 'UI Focused', 'score': 0},
        {'text': 'All of the above', 'score': 1},
      ],
    },
    {
      'questionText': 'Which of the following widgets use for layout?',
      'choieces': [
        {'text': 'Text', 'score': 0},
        {'text': 'Column', 'score': 1},
        {'text': 'Expanded', 'score': 0},
        {'text': 'Inkwell', 'score': 0},
      ],
    },
    {
      'questionText':
          'Which of the following widgets used for repeating the content',
      'choieces': [
        {'text': 'Expanded', 'score': 0},
        {'text': 'ListView', 'score': 1},
        {'text': 'Stack', 'score': 0},
        {'text': 'Scaffold', 'score': 0},
      ],
    },
    {
      'questionText': 'Flutter use platform primitives',
      'choieces': [
        {'text': 'False', 'score': 1},
        {'text': 'True', 'score': 0},
      ],
    },
    {
      'questionText': 'Flutter uses one code base',
      'choieces': [
        {'text': 'True', 'score': 1},
        {'text': 'False', 'score': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height / 16,
      child: Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.height,
            color: Colors.white10,
            child: _questionsIndex < _question.length
                ? quiz(
                    _question,
                    _questionsIndex,
                    answerQuestion,
                  )
                : result(_resetQuiz, _totalScore)),
      ),
    );
  }
}
