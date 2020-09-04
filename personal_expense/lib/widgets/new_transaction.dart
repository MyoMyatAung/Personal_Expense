import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  final Function addNewTransaction;
  NewTransaction({this.addNewTransaction});

  final titleTextController = TextEditingController();
  final amountTextController = TextEditingController();

  void submitData () {
    final enteredTitle = titleTextController.text;
    final enteredAmount = double.parse(amountTextController.text);
    if(enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }
    addNewTransaction(enteredTitle, enteredAmount);
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
