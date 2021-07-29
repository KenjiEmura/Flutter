// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import 'text_control.dart';
import 'text_output.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Variables, data, etc.
  bool _textType = true;

  // Functions, getters, etc.
  void _buttonPressed() {
    setState(() {
      _textType = !_textType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'First Assignment',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Column(children: [
            TextToDisplay(_textType),
            TextControl(_buttonPressed),
          ]),
        ),
      ),
    );
  }
}
