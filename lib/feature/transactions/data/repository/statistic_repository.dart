import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/repository/i_statistic_repository.dart';
import '../data_source/transaction_local_db.dart';

@immutable
@Singleton(as: IStatisticRepository)
class StatisticRepository implements IStatisticRepository {
  final BehaviorSubject<Map<DateTime, double>> _statisticDataStream;
  final ITransactionLocalDb _transactionLocalDb;

  StatisticRepository._(Map<DateTime, double> data, this._transactionLocalDb)
      : _statisticDataStream = BehaviorSubject.seeded(data);

  @FactoryMethod(preResolve: true)
  static Future<StatisticRepository> init(ITransactionLocalDb _transactionLocalDb) async {
    final transactions = await _transactionLocalDb.getExpensesGroupedByDate();
    return StatisticRepository._(transactions, _transactionLocalDb);
  }

  @override
  Future<Map<DateTime, double>> getExpensesGroupedByDate() async {
    final result = await _transactionLocalDb.getExpensesGroupedByDate();
    _statisticDataStream.add(result);

    return result;
  }

  @override
  void dispose() {
    _statisticDataStream.close();
  }

  @override
  BehaviorSubject<Map<DateTime, double>> get statisticData => _statisticDataStream;
}
