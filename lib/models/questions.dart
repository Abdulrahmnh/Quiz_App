import 'package:flutter/material.dart';

class questions extends StatefulWidget {
  @override
  State<questions> createState() => _questionsState();
  final String questionText;

  const questions(this.questionText);
}

class _questionsState extends State<questions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black12,
            width: 2,
          ),
        ),
        child: Column(
          children: <Widget>[
            Text(
              widget.questionText,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
