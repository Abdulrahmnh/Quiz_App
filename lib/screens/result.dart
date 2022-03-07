import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';

class result extends StatelessWidget {
  final q;
  final resultScore;

  result(this.q, this.resultScore);

  String get resultPharse {
    String resultText;
    if (resultScore >= 10) {
      resultText = 'Excellent!${Emojis.clappingHands}';
    } else if (resultScore >= 8) {
      resultText = 'Good Job${Emojis.okHand}';
    } else if (resultScore >= 6) {
      resultText = 'You can do better${Emojis.raisedHand}';
    } else if (resultScore >= 4) {
      resultText = 'Less than expected${Emojis.astonishedFace}';
    } else {
      resultText = 'You have to learn more${Emojis.cryingFace}';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/result_back.png"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Your Score \n $resultScore/10',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          if (resultScore >= 10)
                            Image.asset('assets/1st.png',
                                width: 200, height: 300, fit: BoxFit.cover)
                          else if (resultScore >= 8)
                            Image.asset('assets/2nd.png',
                                width: 200, height: 300, fit: BoxFit.cover)
                          else if (resultScore >= 6)
                            Image.asset('assets/3nd.png',
                                width: 200, height: 300, fit: BoxFit.cover)
                          else if (resultScore >= 4)
                            Image.asset('assets/keep-growing.png',
                                width: 200, height: 300, fit: BoxFit.cover)
                          else
                            Image.asset('assets/keep_learning.png',
                                width: 200, height: 250, fit: BoxFit.cover)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          resultPharse,
                          style: const TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.black,
                            width: 4,
                          ),
                        ),
                        child: TextButton(
                          child: Column(
                            children: const [
                              Text(
                                'Restart The Quiz',
                                style: TextStyle(
                                    fontSize: 28, color: Colors.indigo),
                              ),
                            ],
                          ),
                          onPressed: q,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
