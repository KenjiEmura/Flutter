import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/number_symbols_data.dart';

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
    });
  }

  double get totalSpending {
    return groupedTransactionValues.fold(0.0, (sum, curentData) {
      return sum + curentData['amount'];
    });
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
                          totalSpending == 0.0
                              ? 0.0
                              : data['amount'] / totalSpending),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
