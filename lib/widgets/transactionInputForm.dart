import 'package:flutter/material.dart';

class TransactionInputForm extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function submitForm;

  TransactionInputForm(this.submitForm);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () => submitForm(
                titleController.text,
                amountController.text,
              ),
              child: Text(
                'Add Transaction',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.orange,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
