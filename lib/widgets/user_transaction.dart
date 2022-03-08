import '../models/transaction.dart';
import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transactions_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);
  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(
      't1',
      'New shoes',
      1400,
      DateTime.now(),
    ),
    Transaction(
      't2',
      'Laptop',
      6500,
      DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      DateTime.now().toString(),
      txTitle,
      txAmount,
      DateTime.now(),
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
