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
  final _questions = [
    {
      'question': "What's your favorite color?",
      'answers': ['Black', 'Red', "Green", 'White']
    },
    {
      'question': "What's your favorite animal?",
      'answers': ['Rabbit', 'Snake', "Elephant", 'Lion']
    },
    {
      'question': "Who's your favorite instructor?",
      'answers': ['Max', 'Kenji', "Hernando", 'Kaori']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    if (_questionIndex < _questions.length) {
      print("We still have more questions to display!");
    } else {
      print('No more questions avalaible!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text("Kenji's Amazing App!"),
      home: Scaffold(
        appBar: AppBar(
          title: Text('健治の素晴らしいアプリ'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                selectAnswer: _answerQuestion)
            : Result(),
      ),
    );
  }
}
