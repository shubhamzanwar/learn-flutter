import 'package:flutter/material.dart';

import './models/transaction.dart';
import './widgets/transaction.dart';
import './widgets/transactionInputForm.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final List<TransactionModel> transactions = [
    TransactionModel(
      id: 't1',
      text: 'Groceries',
      amount: 100.20,
      date: DateTime.now(),
    ),
    TransactionModel(
      id: 't2',
      text: 'Clothes',
      amount: 999,
      date: DateTime.now(),
    ),
  ];

  void addTransaction(String title, String amount) {
    String id = "t${transactions.length}";
    double formatedAmount = double.parse(amount);
    DateTime date = DateTime.now();

    TransactionModel newTransaction = TransactionModel(
      id: id,
      text: title,
      amount: formatedAmount,
      date: date,
    );

    setState(() {
      transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Card(
            color: Colors.purple,
            child: Text(
              "Bruhhhh",
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        TransactionInputForm(addTransaction),
        Column(
          children: transactions
              .map(
                (transaction) => Transaction(
                  transaction: transaction,
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
