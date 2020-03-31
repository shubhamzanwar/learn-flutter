import 'package:flutter/material.dart';

class TransactionInputForm extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitForm() {
    print(titleController.text);
    print(amountController.text);
  }

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
                controller: amountController),
            FlatButton(
              onPressed: submitForm,
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
