import 'package:flutter/material.dart';

class TextToDisplay extends StatelessWidget {
  final bool displayMainText;

  TextToDisplay(this.displayMainText);

  String get textToDisplay {
    if (displayMainText) {
      return 'This is the original text';
    } else {
      return 'This is the second type of text';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(textToDisplay);
  }
}
