import 'package:flutter/material.dart';
import 'package:expensetrackapp/models/expense.dart';
import 'package:expensetrackapp/expenses_list.dart'; // Adjust the path if necessary

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
      title: 'Flutter course',
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
    return Scaffold(
      appBar: AppBar(title: const Text('Expenses Tracker')),
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
