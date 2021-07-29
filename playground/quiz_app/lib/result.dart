import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    if (resultScore <= 8) {
      return 'Tu espacio en el paraíso está asegurado';
    } else if (resultScore <= 15) {
      return 'Todavía tienes oportunidad de salvación';
    } else {
      return 'Tu alma será consumida por la oscuridad';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(onPressed: resetQuiz, child: Text('Restart Quiz!'))
        ],
      ),
    );
  }
}
