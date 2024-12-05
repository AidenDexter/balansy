import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/services/transaction_service/i_transaction_service.dart';
import '../../domain/entity/my_transaction.dart';
import '../../domain/repository/i_add_transaction_repository.dart';

@immutable
@LazySingleton(as: INewTransactionRepository)
class NewTransactionRepository implements INewTransactionRepository {
  const NewTransactionRepository(this._transactionService);

  final ITransactionService _transactionService;

  @override
  Future<void> createTransaction(MyTransaction transaction) async {
    await _transactionService.createTransaction(transaction);
  }

  @override
  Future<List<MyTransaction>> readTransactions() async {
    return _transactionService.readTransactions();
  }

  @override
  Future<int> updateTransaction(MyTransaction transaction) async {
    return _transactionService.updateTransaction(transaction);
  }

  @override
  Future<void> deleteTransaction(int id) async {
    await _transactionService.deleteTransaction(id);
  }

  @override
  Future<List<MyTransaction>> filterTransactionsByCategory(MyTransaction transaction) async {
    return _transactionService.filterTransactionsByCategory(transaction);
  }

  @override
  Future<List<MyTransaction>> filterTransactionsByDate(MyTransaction transaction) async {
    return _transactionService.filterTransactionsByDate(transaction);
  }

  @override
  Future<List<MyTransaction>> filterTransactionsByType(MyTransaction transaction) async {
    return _transactionService.filterTransactionsByType(transaction);
  }
}
