import 'package:flutter/material.dart';
import 'package:zoja_tech_assessment/features/transaction_list_section/transaction_model.dart';
import 'package:zoja_tech_assessment/features/transaction_list_section/transaction_vm.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: FutureBuilder<List<Transaction>>(
        future: TransactionVM().fetchTransactions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No transactions found.'));
          }
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              final transaction = snapshot.data![index];
              return ListTile(
                title: Text(transaction.description),
                subtitle: Text(transaction.date),
                trailing: Text('\$${transaction.amount}'),
              );
            },
          );
        },
      ),
    );
  }
}

