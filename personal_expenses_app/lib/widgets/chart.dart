import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

import '/widgets/cart_bar.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, dynamic>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;
      recentTransactions.forEach((transaction) {
        if (transaction.date.day == weekDay.day &&
            transaction.date.month == weekDay.month &&
            transaction.date.year == weekDay.year) {
          totalSum += transaction.amount;
        }
      });
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    }).reversed.toList();
  }

  double get maxSpendingDay {
    return groupedTransactionValues.fold(
        0.0,
        (double biggest, current) =>
            biggest > current['amount'] ? biggest : current['amount']);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 6,
        right: 6,
      ),
      child: Card(
        elevation: 2,
        // margin: EdgeInsets.all(20),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: groupedTransactionValues
                .map((data) => Flexible(
                      fit: FlexFit.tight,
                      child: ChartBar(
                          data['day'],
                          data['amount'],
                          maxSpendingDay == 0.0
                              ? 0.0
                              : data['amount'] / maxSpendingDay),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
