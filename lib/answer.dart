import 'package:flutter/material.dart';
import 'package:surverry_appp/question.dart';
class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String answerText;

  
  Answer(this.handler,this.answerText);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: ElevatedButton(
                  onPressed:
                    handler
                  ,
                  // 1:27 am
                  child: Questions(answerText),
                ),
      ),
    );
  }
}