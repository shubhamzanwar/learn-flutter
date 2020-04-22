import 'package:intl/intl.dart' as intl;
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
                  color: Theme.of(context).accentColor,
                  width: 2,
                ),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                "₹${transaction.amount}",
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transaction.text,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Text(
                    intl.DateFormat('dd MMM yyyy').format(
                      transaction.date,
                    ),
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
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
