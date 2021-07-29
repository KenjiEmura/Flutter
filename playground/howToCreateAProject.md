### Prepare your machine
######  Install everything you need

Go to https://flutter.dev/docs/get-started/install and install the flutter sdk, Android Studio, xCode, etc.

### Create the project
Go to the folder where you want to create your project and type the next command:

`flutter create [name-of-your-project] `

cd into the newly created project folder and start writing or configuring your project.

### Basic Elements of `the main.dart`

- At the top, you have to `import 'package:flutter/material.dart';` where all the code that we will use lives.

- Next we will have the `void main() => runApp(MyApp());` main function that will run our app, note the here you can name your app as you like.

- Next, you have to add the main Widget which could be a stateless or a stateful Widget. The default is an stateless, but for the sake of this guide, we will add a stateful one. Remember that the `_` underscore before anything, indicates that the element is private (only can be accessed or modified within the library (library = dart file)).

- The basic code should look something like this:

```dart
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
```