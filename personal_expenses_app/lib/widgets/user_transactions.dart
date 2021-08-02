import 'package:flutter/material.dart';

import 'transaction_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: "Kenji's shoes", amount: 29.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Green Tea', amount: 1.29, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Romantic Dinner', amount: 35.2, date: DateTime.now()),
  ];

  void _addNewTransation(String title, double amount) {
    final newTransaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());
    setState(() {
      _userTransactions.insert(0, newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransation),
        TransactionList(_userTransactions),
      ],
    );
  }
}
