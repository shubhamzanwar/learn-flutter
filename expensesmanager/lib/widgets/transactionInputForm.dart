import 'package:flutter/material.dart';

class TransactionInputForm extends StatefulWidget {
  final Function submitForm;

  TransactionInputForm(this.submitForm);

  @override
  _TransactionInputFormState createState() => _TransactionInputFormState();
}

class _TransactionInputFormState extends State<TransactionInputForm> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submissionHandler() {
    final titleText = titleController.text;
    final amountText = amountController.text;

    if(titleText.isEmpty || amountText.isEmpty) {
      return;
    }

    widget.submitForm(titleText, amountText);
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
              onSubmitted: (_) => submissionHandler(),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submissionHandler(),
            ),
            FlatButton(
              onPressed: submissionHandler,
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
