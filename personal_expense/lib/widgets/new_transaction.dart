import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleTextController = TextEditingController();
  final amountTextController = TextEditingController();
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
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountTextController,
            ),
            FlatButton(
              onPressed: () {
              },
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
