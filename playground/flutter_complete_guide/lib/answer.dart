import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectQuestion;
  final String answerText;

  Answer(this.selectQuestion, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: Text(
            answerText,
            style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
          ),
          onPressed: selectQuestion),
    );
  }
}
