import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/db_fields.dart';
import '../../../../core/services/database_service/database_service.dart';
import '../../domain/entity/my_transaction.dart';

@immutable
abstract interface class ITransactionLocalDb {
  Future<MyTransaction> create(MyTransaction transaction);
  Future<List<MyTransaction>> read();
  Future<int> update(MyTransaction transaction);
  Future<void> delete(int id);
  Future<Map<DateTime, double>> getExpensesGroupedByDate();

  Future<List<MyTransaction>> filterByType(MyTransaction transaction);
  Future<List<MyTransaction>> filterByDate(MyTransaction transaction);
  Future<List<MyTransaction>> filterByCategory(MyTransaction transaction);
}

@Singleton(as: ITransactionLocalDb)
class TransactionLocalDB implements ITransactionLocalDb {
  TransactionLocalDB(this._databaseService);
  final DatabaseService _databaseService;

  @override
  Future<MyTransaction> create(MyTransaction transaction) async {
    final transactionId = await _databaseService.insert(DBFields.transactionTable, transaction.toMap());
    return transaction.copyWith(id: transactionId);
  }

  @override
  Future<List<MyTransaction>> read() async {
    final result = await _databaseService.query(DBFields.transactionTable);

    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<int> update(MyTransaction transaction) => _databaseService.update(
        DBFields.transactionTable,
        transaction.toMap(),
        '${DBFields.transactionId} = ?',
        [transaction.id],
      );

  @override
  Future<void> delete(int id) => _databaseService.delete(
        DBFields.transactionTable,
        '${DBFields.transactionId} = ?',
        [id],
      );

  @override
  Future<List<MyTransaction>> filterByType(MyTransaction transaction) async {
    final result = await _databaseService.query(
      DBFields.transactionTable,
      where: '${DBFields.transactionType} = ?',
      whereArgs: [transaction.type.name],
    );
    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<List<MyTransaction>> filterByDate(MyTransaction transaction) async {
    final result = await _databaseService.query(
      DBFields.transactionTable,
      where: '${DBFields.transactionDate} = ?',
      whereArgs: [transaction.date],
    );
    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<List<MyTransaction>> filterByCategory(MyTransaction transaction) async {
    final result = await _databaseService.query(
      DBFields.transactionTable,
      where: '${DBFields.transactionCategoryId} = ?',
      whereArgs: [transaction.date],
    );
    return result.map(MyTransaction.fromMap).toList();
  }

  @override
  Future<Map<DateTime, double>> getExpensesGroupedByDate() async {
    final result = await _databaseService.rawQuery('''
      SELECT ${DBFields.transactionDate}, SUM(${DBFields.transactionAmount}) AS total
      FROM ${DBFields.transactionTable}
      GROUP BY ${DBFields.transactionDate}
      ORDER BY ${DBFields.transactionDate} ASC
    ''');
    return {
      for (final item in result)
        DateTime.parse((item as Map<String, dynamic>)['date'] as String): item['total'] as double
    };
  }
}
