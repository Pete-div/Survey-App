

import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:surverry_appp/question.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback ResetHa;

  Result(this.resultScore, this.ResetHa);

  String get resultPhase {
    String resultText = 'You did It buddy';
    if (resultScore <= 30) {
      resultText = 'You are awesome and innocent';
    } else if (resultScore <= 40) {
      resultText = 'Pretty likable';
    } else if (resultScore <= 50) {
      resultText = 'Pretty Strange';
    } else {
      resultText = 'You know bad things';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              resultPhase,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
            ),
              Text(
              'Your Score is:$resultScore',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
            ),
            Container(
              child: ElevatedButton(
                onPressed: ResetHa,
                child: Text(
                  'Reset Quiz',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
