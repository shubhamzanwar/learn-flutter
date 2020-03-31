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
        RaisedButton(onPressed: null, child: Text("Press me")),
      ],
    );
  }
}
