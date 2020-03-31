import 'package:flutter/material.dart';

import './models/transaction.dart';

class App extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      text: 'Groceries',
      amount: 100.20,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      text: 'Clothes',
      amount: 999,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Card(
            color: Colors.blue,
            child: Text(
              "Bruhhhh",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        Column(
          children: transactions
              .map(
                (transaction) => Card(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    width: double.infinity,
                    child: Text(
                      transaction.text,
                      textDirection: TextDirection.ltr,
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
