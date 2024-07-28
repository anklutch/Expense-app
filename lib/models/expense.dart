import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Catetory { food, travel, learn, work }

class Expense {
Expense({required this.title, required this.amount,required this.date, required this.catetory}):id = uuid.v4() ;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Catetory catetory;
}