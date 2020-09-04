import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {

  final Function addNewTransaction;
  NewTransaction({this.addNewTransaction});

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleTextController = TextEditingController();

  final amountTextController = TextEditingController();

  void submitData () {
    final enteredTitle = titleTextController.text;
    final enteredAmount = double.parse(amountTextController.text);
    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }
    widget.addNewTransaction(enteredTitle, enteredAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleTextController,
              onSubmitted: (_)=>submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountTextController,
              keyboardType: TextInputType.number,
              onSubmitted: (_)=>submitData(),
            ),
            FlatButton(
              onPressed: submitData,
              child: Text(
                'Add Transaction',
              ),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
