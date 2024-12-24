import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entity/my_transaction.dart';
import '../domain/repository/i_statistic_repository.dart';
import '../domain/repository/i_transaction_repository.dart';

part 'statistic.freezed.dart';

@freezed
class StatisticState with _$StatisticState {
  const StatisticState._();

  const factory StatisticState.idle(Map<DateTime, double> data) = _Idle;
  const factory StatisticState.progress() = _Progress;
  const factory StatisticState.success(Map<DateTime, double> data) = _Success;
  const factory StatisticState.error(String error) = _Error;
}

@freezed
class StatisticEvent with _$StatisticEvent {
  const factory StatisticEvent.onChange(Map<DateTime, double> statisticData) = _OnChangeEvent;
}

class StatisticBloc extends Bloc<StatisticEvent, StatisticState> {
  final IStatisticRepository _statisticRepository;
  final ITransactionRepository _transactionRepository;

  late final StreamSubscription<List<MyTransaction>> _transactionSubscription;

  StatisticBloc({
    required IStatisticRepository statisticRepository,
    required ITransactionRepository transactionRepository,
  })  : _statisticRepository = statisticRepository,
        _transactionRepository = transactionRepository,
        super(StatisticState.idle(statisticRepository.statisticData.value)) {
    on<StatisticEvent>(
      (event, emit) => event.map(
        onChange: (event) => _onChange(event, emit),
      ),
    );

    _transactionSubscription = _transactionRepository.transactions.stream.listen(_onTransactionsChanged);
  }
  Future<void> _onTransactionsChanged(List<MyTransaction> transactions) async {
    final groupedData = await _statisticRepository.getExpensesGroupedByDate();
    add(StatisticEvent.onChange(groupedData));
  }

  Future<void> _onChange(_OnChangeEvent event, Emitter<StatisticState> emit) async {
    emit(StatisticState.success(event.statisticData));
  }

  @override
  Future<void> close() {
    _statisticRepository.dispose();
    _transactionRepository.dispose();
    _transactionSubscription.cancel();
    return super.close();
  }
}
