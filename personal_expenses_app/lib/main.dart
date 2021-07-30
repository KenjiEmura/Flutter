import 'package:flutter/material.dart';
import 'transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kenji's Expenses Tracker",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: "Kenji's shoes", amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Green Tea', amount: 1.29, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Romantic Dinner', amount: 35.2, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kenji's Expenses Tracker"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('CHART'),
                elevation: 5,
              ),
            ),
            Column(
              children: [
                ...transactions
                    .map((transaction) => Card(child: Text(transaction.title)))
                    .toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
