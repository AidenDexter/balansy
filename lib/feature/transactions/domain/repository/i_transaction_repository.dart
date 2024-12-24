import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';

import '../entity/my_transaction.dart';

@immutable
abstract interface class ITransactionRepository {
  BehaviorSubject<List<MyTransaction>> get transactions;

  Future<void> create(MyTransaction transaction);
  Future<void> update(MyTransaction transaction);
  Future<void> delete(int id);
//TODO: реализовать поиск по фильтрам
  Future<List<MyTransaction>> filterByType(MyTransaction transaction);
  Future<List<MyTransaction>> filterByDate(MyTransaction transaction);
  Future<List<MyTransaction>> filterByCategory(MyTransaction transaction);

  void dispose();
}
