import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../feature/transactions/domain/entity/my_transaction.dart';

@immutable
abstract interface class ITransactionService {
  // Работа с транзакциями
  Future<void> createTransaction(MyTransaction transaction);

  Future<List<MyTransaction>> readTransactions();

  Future<int> updateTransaction(MyTransaction transaction);

  Future<void> deleteTransaction(int id);

  Future<List<MyTransaction>> filterTransactionsByType(MyTransaction transaction);

  Future<List<MyTransaction>> filterTransactionsByDate(MyTransaction transaction);

  Future<List<MyTransaction>> filterTransactionsByCategory(MyTransaction transaction);
}
