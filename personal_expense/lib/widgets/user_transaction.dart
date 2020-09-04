import 'package:flutter/material.dart';
import 'package:personal_expense/models/transaction.dart';
import 'package:personal_expense/widgets/transaction_list.dart';

class UserTransaction extends StatelessWidget {
  final List<Transaction> transactions;
  UserTransaction({this.transactions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(
          transactions: transactions,
        )
      ],
    );
  }
}
