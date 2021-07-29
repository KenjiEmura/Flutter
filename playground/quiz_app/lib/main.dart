import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'question': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'question': "What's your favorite animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9}
      ]
    },
    {
      'question': "Who's your favorite instructor?",
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Kenji', 'score': 3},
        {'text': 'Hernando', 'score': 10},
        {'text': 'Kaori', 'score': 2}
      ]
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print("_resetQuiz was pressed...");
  }

  void _answerQuestion(int score) {
    print("Selected score: $score");
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text("Kenji's Amazing App!"),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '健治の素晴らしいアプリ',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                selectAnswer: _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
