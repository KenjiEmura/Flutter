import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectQuestion;
  final String answer;

  Answer(this.selectQuestion, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.blue),
        //   foregroundColor: MaterialStateProperty.all(Colors.red),
        // ),
        style: ElevatedButton.styleFrom(
            primary: Colors.blue, onPrimary: Colors.white),
        child: Text(
          answer,
          // style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
        ),
        onPressed: selectQuestion,
      ),
    );
  }
}
