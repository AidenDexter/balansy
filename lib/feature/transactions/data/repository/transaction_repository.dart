import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/entity/my_transaction.dart';
import '../../domain/repository/i_transaction_repository.dart';
import '../data_source/transaction_local_db.dart';

@immutable
@Singleton(as: ITransactionRepository)
class TransactionRepository implements ITransactionRepository {
  final BehaviorSubject<List<MyTransaction>> _transactionsStream;
  final ITransactionLocalDb _transactionLocalDb;

  TransactionRepository._(List<MyTransaction> transactions, this._transactionLocalDb)
      : _transactionsStream = BehaviorSubject.seeded(transactions);

  @FactoryMethod(preResolve: true)
  static Future<TransactionRepository> init(ITransactionLocalDb _transactionLocalDb) async {
    final transactions = await _transactionLocalDb.read();
    return TransactionRepository._(transactions, _transactionLocalDb);
  }

  @override
  Future<void> create(MyTransaction transaction) async {
    final transactionFromDB = await _transactionLocalDb.create(transaction);

    _transactionsStream.add([transactionFromDB, ..._transactions]);
  }

  @override
  Future<void> update(MyTransaction transaction) async {
    final index = _transactions.indexWhere((e) => e.id == transaction.id);
    if (index == -1) return debugPrint('no matches found by id');

    await _transactionLocalDb.update(transaction);
    _transactionsStream.add(
      List.from(_transactions)
        ..removeAt(index)
        ..insert(index, transaction),
    );
  }

  @override
  Future<void> delete(int id) async {
    await _transactionLocalDb.delete(id);
    _transactionsStream.add(List.from(_transactions)..removeWhere((e) => e.id == id));
  }

  @override
  Future<List<MyTransaction>> filterByCategory(MyTransaction transaction) async {
    return _transactionLocalDb.filterByCategory(transaction);
  }

  @override
  Future<List<MyTransaction>> filterByDate(MyTransaction transaction) async {
    return _transactionLocalDb.filterByDate(transaction);
  }

  @override
  Future<List<MyTransaction>> filterByType(MyTransaction transaction) async {
    return _transactionLocalDb.filterByType(transaction);
  }

  @override
  BehaviorSubject<List<MyTransaction>> get transactions => _transactionsStream;
  List<MyTransaction> get _transactions => _transactionsStream.value;

  @override
  @mustCallSuper
  void dispose() {
    _transactionsStream.close();
  }
}
