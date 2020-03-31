import 'package:flutter/material.dart';

import '../models/transaction.dart';

class Transaction extends StatelessWidget {
  final TransactionModel transaction;

  Transaction({this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                transaction.amount.toString(),
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.orange),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transaction.text,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  transaction.date.toString(),
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 12
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}