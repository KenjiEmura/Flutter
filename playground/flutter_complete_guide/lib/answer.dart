import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectQuestion;
  Answer(this.selectQuestion);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
          ),
          child: Text('Answer 1'),
          onPressed: selectQuestion),
    );
  }
}
