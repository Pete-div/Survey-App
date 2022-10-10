import 'package:flutter/material.dart';
import 'package:surverry_appp/quiz.dart';
import 'package:surverry_appp/result.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions =  [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 20},
        {'text': 'White', 'score': 25}
      ],
    },
    {
      'questionText': 'What\'s your favorite Car?',
      'answers': [
        {'text': 'BMW', 'score': 60},
        {'text': 'TOYOTA', 'score': 50},
        {'text': 'BENZ', 'score': 40},
        {'text': 'CAMRY', 'score': 30}
      ],
    },
    {
      'questionText': 'What\'s your favorite City?',
      'answers': [
        {'text': 'Oki city', 'score': 20},
        {'text': 'Opoama', 'score': 30},
        {'text': 'Ekeremo', 'score': 40},
        {'text': 'Tupogbeni', 'score': 50}
      ],
    },
    {
      'questionText': 'What\'s your best Player?',
      'answers': [
      {'text': 'BMW', 'score': 60},
        {'text': 'TOYOTA', 'score': 50},
        {'text': 'BENZ', 'score': 40},
        {'text': 'CAMRY', 'score': 30}
      ],
    },
    {
      'questionText': 'What\'s your best Country?',
      'answers': [
       {'text': 'Oki city', 'score': 20},
        {'text': 'Opoama', 'score': 30},
        {'text': 'Ekeremo', 'score': 40},
        {'text': 'Tupogbeni', 'score': 50}
      ],
    },
    {
      'questionText': 'What\'s your favorite chair?',
      'answers': [
   {'text': 'Oki city', 'score': 20},
        {'text': 'Opoama', 'score': 30},
        {'text': 'Ekeremo', 'score': 40},
        {'text': 'Tupogbeni', 'score': 50}
      ],
    },
    {
      'questionText': 'What\'s your best actor?',
      'answers': [     {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 15},
        {'text': 'Green', 'score': 20},
        {'text': 'White', 'score': 25}],
    },
    {
      'questionText': 'What\'s your favorite President so far?',
      'answers': [{'text': 'BMW', 'score': 60},
        {'text': 'TOYOTA', 'score': 50},
        {'text': 'BENZ', 'score': 40},
        {'text': 'CAMRY', 'score': 30}],
    },
  ];
  var _questionIndex = 0;
  int _totalScore = 0;

  void _AnswerQuestion(int score) {
    setState(() {
      _totalScore +=score;
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  void _reset () {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
      print(_questionIndex);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Survey App'),
          ),
          body: _questionIndex < questions.length
              ? Quizz(
                  answerQuestion: _AnswerQuestion,
                  questions: questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore,_reset)),
    );
  }
}
