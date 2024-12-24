import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

@immutable
abstract interface class IStatisticRepository {
  BehaviorSubject<Map<DateTime, double>> get statisticData;
  Future<Map<DateTime, double>> getExpensesGroupedByDate();

  void dispose();
}
