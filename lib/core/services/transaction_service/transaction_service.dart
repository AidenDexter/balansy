import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../feature/transactions/domain/entity/my_transaction.dart';
import '../../constants/sqflite_constants.dart';
import '../database_service/database_service.dart';
import 'i_transaction_service.dart';

@immutable
@LazySingleton(as: ITransactionService)
class TransactionService implements ITransactionService {
  const TransactionService(this._databaseService);
  final DatabaseService _databaseService;
  // Работа с транзакциями
  @override
  Future<void> createTransaction(MyTransaction transaction) async {
    await _databaseService.insert(SQFLiteConstants.transactionTableName, transaction.toMap());
    debugPrint('addCategory ${transaction
      ..amount
      ..description}');
  }

  @override
  Future<List<MyTransaction>> readTransactions() async {
    final result = await _databaseService.query(SQFLiteConstants.transactionTableName);

    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<int> updateTransaction(MyTransaction transaction) async {
    return _databaseService.update(
      SQFLiteConstants.transactionTableName,
      transaction.toMap(),
      '${SQFLiteConstants.trIdColumnName} = ?',
      [transaction.id],
    );
  }

  @override
  Future<void> deleteTransaction(int id) async {
    try {
      await _databaseService.delete(
        SQFLiteConstants.transactionTableName,
        '${SQFLiteConstants.trIdColumnName} = ?',
        [id],
      );
    } on Exception catch (error) {
      debugPrint(
        'Something went wrong when deleting a transaction:$error ',
      );
    }
  }

  @override
  Future<List<MyTransaction>> filterTransactionsByType(MyTransaction transaction) async {
    final result = await _databaseService.query(
      SQFLiteConstants.transactionTableName,
      where: '${SQFLiteConstants.trTypeColumnName} = ?',
      whereArgs: [transaction.type.name],
    );
    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<List<MyTransaction>> filterTransactionsByDate(MyTransaction transaction) async {
    final result = await _databaseService.query(
      SQFLiteConstants.transactionTableName,
      where: '${SQFLiteConstants.trDateColumnName} = ?',
      whereArgs: [transaction.date],
    );
    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<List<MyTransaction>> filterTransactionsByCategory(MyTransaction transaction) async {
    final result = await _databaseService.query(
      SQFLiteConstants.transactionTableName,
      where: '${SQFLiteConstants.trCategoryIdColumnName} = ?',
      whereArgs: [transaction.date],
    );
    return result.map(MyTransaction.fromMap).toList();
  }
}
