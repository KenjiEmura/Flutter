import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return MaterialApp(
      // home: Text("Kenji's Amazing App!"),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(_answerQuestion, answer))
                .toList()
          ],
        ),
      ),
    );
  }
}
