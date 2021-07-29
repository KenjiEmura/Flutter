import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = [
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
    if (_questionIndex < questions.length) {
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
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['question']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) => Answer(_answerQuestion, answer))
                      .toList()
                ],
              )
            : Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
