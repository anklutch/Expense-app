import 'package:flutter/material.dart';
import 'package:expensetrackapp/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'FLutter course',
      amount: 19.99,
      date: DateTime.now(),
      catetory: Catetory.learn
    ),
    Expense(
      title: 'Deadpool',
      amount: 5.12,
      date: DateTime.now(),
      catetory: Catetory.travel
    ),
    Expense(
      title: 'VietNam',
      amount: 210,
      date: DateTime.now(),
      catetory: Catetory.work
    )
  ];
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('The chart'), Text('Expenses list ...')],
      ),
    );
  }
}
