import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/routes_enum.dart';
import '../../add_transaction/domain/entity/transaction.dart';

void main() {
  runApp(const MaterialApp(
    home: TransactionList(),
  ));
}

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  List<Transaction> transactions = [];

  void _clearTransactions() {
    setState(() {
      transactions.clear();
    });
  }

  void _deleteTransaction(int index) {
    setState(() {
      transactions.removeAt(index);
    });
  }

  void _editTransaction(int index) {
    //TODO: Логика редактирования транзакции
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Edit Transaction'),
          content: const Text('Edit the details of the transaction'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(AddTransactionRoutes.add.path),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            //TODO: Логика для открытия бокового меню
          },
        ),
        title: const Text('Welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Available Price section
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Available Price', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(r'$1500.00', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 16),
              ],
            ),
            // "My Transactions" section
            const Text('Мои транзакции', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            // Clear button
            ElevatedButton(
              onPressed: _clearTransactions,
              child: const Text('Clear All Transactions'),
            ),
            const SizedBox(height: 16),
            // List of transactions
            Expanded(
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transaction = transactions[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(transaction.name),
                      subtitle: Text('${transaction.date} | ${transaction.type}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.edit),
                            onPressed: () => _editTransaction(index),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteTransaction(index),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
