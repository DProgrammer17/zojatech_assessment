import 'package:zoja_tech_assessment/transaction_list_section/transaction_model.dart';

class TransactionVM {
  List<String> descriptions = ['Groceries', 'Rent'];
  List<String> dates = ['2024-05-01', '2024-05-01'];
  List<double> amount = [50.0, 1000.0];

  Future<List<Transaction>> fetchTransactions() async {
    // Simulate network call
    await Future.delayed(const Duration(seconds: 2));
    return List.generate(
      descriptions.length,
          (index) => Transaction(
        description: descriptions.elementAt(index),
        date: dates.elementAt(index),
        amount: amount.elementAt(index),
      ),
    );
  }
}
