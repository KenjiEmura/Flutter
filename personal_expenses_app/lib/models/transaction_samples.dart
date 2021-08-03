import 'transaction.dart';

List<Transaction> sampleInfo = [
  Transaction(id: 't1', title: "健治の靴", amount: 49.99, date: DateTime.now()),
  Transaction(
      id: 't2',
      title: 'Green Tea',
      amount: 11.29,
      date: DateTime.now().subtract(Duration(days: 1))),
  Transaction(
      id: 't2.1',
      title: 'Hamburguer',
      amount: 21.86,
      date: DateTime.now().subtract(Duration(days: 1))),
  Transaction(
      id: 't3',
      title: 'Romantic Dinner',
      amount: 35.2,
      date: DateTime.now().subtract(Duration(days: 2))),
  Transaction(
      id: 't4',
      title: 'Skating Entrance Fee',
      amount: 12.5,
      date: DateTime.now().subtract(Duration(days: 3))),
  Transaction(
      id: 't4.1',
      title: 'Gear Rental',
      amount: 35.27,
      date: DateTime.now().subtract(Duration(days: 3))),
  Transaction(
      id: 't5',
      title: 'Beer',
      amount: 24.68,
      date: DateTime.now().subtract(Duration(days: 4))),
  Transaction(
      id: 't6',
      title: "Dog's food",
      amount: 42.12,
      date: DateTime.now().subtract(Duration(days: 5))),
  Transaction(
      id: 't7',
      title: 'Massage',
      amount: 27.36,
      date: DateTime.now().subtract(Duration(days: 6))),
];
