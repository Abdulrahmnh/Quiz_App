import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class choieces extends StatelessWidget {
  final String answerText;
  final Function() x;

  choieces(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
              ),
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              width: double.infinity,
              // height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: x,
                  child: Text(answerText,
                      style: GoogleFonts.balsamiqSans(
                        textStyle: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
