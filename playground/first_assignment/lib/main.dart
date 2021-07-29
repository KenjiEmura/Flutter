// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ...
  // Here goes the private _variables, function declarations, logic, etc.
  // ...

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Text("Kenji's Amazing App!"),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'AppBar Title goes here',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Text('Here goes everything...'),
          )),
    );
  }
}
