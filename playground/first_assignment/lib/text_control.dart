import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        primary: Colors.blue, //Text Color
        side: BorderSide(color: Colors.blue), //Border Color
      ),
      child: Text('Change text'),
      onPressed: changeText,
    );
  }
}
