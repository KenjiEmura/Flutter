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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    .map(
                      (transaction) => Card(
                        elevation: 2,
                        margin: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Row(children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 15,
                            ),
                            padding: EdgeInsets.all(5),
                            child: Text(
                              transaction.amount.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                transaction.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                transaction.date.toString(),
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ]),
                      ),
                    )
                    .toList(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
