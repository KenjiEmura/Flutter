import 'package:flutter/material.dart';

// void main() {
//   runApp(MyCoolApp());
// }

void main() => runApp(MyCoolApp());

class MyCoolApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      // home: Text("Kenji's Amazing App!"),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: () {}, child: Text('Answer 2')),
            ElevatedButton(onPressed: () {}, child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}
