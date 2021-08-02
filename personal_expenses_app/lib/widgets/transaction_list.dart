import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) => Card(
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
                  color: Theme.of(context).primaryColor,
                  width: 2,
                ),
              ),
              margin: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 15,
              ),
              padding: EdgeInsets.all(5),
              child: Text(
                '\$${transactions[index].amount.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactions[index].title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  DateFormat.yMMMd().format(transactions[index].date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
