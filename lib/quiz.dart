import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
class Quizz extends StatelessWidget {
List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quizz({required this.questions,required this.answerQuestion,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue),
                      child: Center(
                        child: Text(
                          ' ${questionIndex + 1}/ ${questions.length}',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Questions(
                      questions[questionIndex]['questionText'] as String),
                  //  now we want to change the list of the question into widget, we will turn it into widget...i.e
                  // (map()), map needs a function.....so , map((){}), there4, we put this single question as the input aflutternd also
                  // return(Widget...it can be a list of widget ) some values
                  // questions((question){
                  // return  Answer(question)   }) = ...(questions[_questionIndex]['answers']) as List<Map<String,Object>>.map((answer){
                  //  return Answer(answer,_AnswerQuestion).toList();
                  //
                  // })
                  ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                      .map((answer) {
                    return Answer(()=> answerQuestion(answer['score']), answer['text']as String);
                  }).toList(),
                ],
              );
  }
}