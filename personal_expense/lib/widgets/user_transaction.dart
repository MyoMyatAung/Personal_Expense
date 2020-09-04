import 'package:flutter/material.dart';
import 'package:personal_expense/models/transaction.dart';
import 'package:personal_expense/widgets/transaction_list.dart';

import 'new_transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(
          transactions: transactions,
        )
      ],
    );
  }
}
