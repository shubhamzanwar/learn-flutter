import 'package:flutter/foundation.dart';

class TransactionModel {
  final String id;
  final String text;
  final double amount;
  final DateTime date;

  TransactionModel({
    @required this.id,
    @required this.text,
    @required this.amount,
    @required this.date,
  });
}