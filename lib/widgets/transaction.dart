import 'package:flutter/material.dart';

import '../models/transaction.dart';

class Transaction extends StatelessWidget {

  final TransactionModel transaction;

  Transaction({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.all(16),
        width: double.infinity,
        child: Text(
          transaction.text,
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
