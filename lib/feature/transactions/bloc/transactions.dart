import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entity/my_transaction.dart';
import '../domain/repository/i_transaction_repository.dart';

part 'transactions.freezed.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const TransactionsState._();

  const factory TransactionsState.idle({required List<MyTransaction> transactions}) = _Idle;
  const factory TransactionsState.progress({required List<MyTransaction> transactions}) = _Progress;
  const factory TransactionsState.success({required List<MyTransaction> transactions}) = _Success;
  const factory TransactionsState.error({required List<MyTransaction> transactions, required String error}) = _Error;
}

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.onChange({required List<MyTransaction> transactions}) = _OnChangeEvent;
  const factory TransactionsEvent.delete({required int id}) = _DeleteEvent;
}

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final ITransactionRepository _repository;
  late final StreamSubscription<List<MyTransaction>> _transactionSubscription;

  TransactionsBloc({required ITransactionRepository repository})
      : _repository = repository,
        super(TransactionsState.idle(transactions: repository.transactions.value)) {
    on<TransactionsEvent>(
      (event, emit) => event.map(
        onChange: (event) => _onChange(event, emit),
        delete: (event) => _delete(event, emit),
      ),
    );
    _transactionSubscription = _repository.transactions.stream.listen((transactions) {
      add(TransactionsEvent.onChange(transactions: transactions));
    }, onError: (error) => debugPrint('Stream error: $error'));
  }

  void _onChange(_OnChangeEvent event, Emitter<TransactionsState> emit) {
    final updatedTransactions = event.transactions;
    emit(TransactionsState.idle(transactions: updatedTransactions));
  }

  Future<void> _delete(_DeleteEvent event, Emitter<TransactionsState> emit) async {
    emit(TransactionsState.progress(transactions: state.transactions));
    try {
      await _repository.delete(event.id);
      emit(TransactionsState.success(transactions: state.transactions));
    } on Exception catch (e) {
      emit(TransactionsState.error(transactions: state.transactions, error: 'Failed to delete category: $e'));
    } finally {
      emit(TransactionsState.idle(transactions: state.transactions));
    }
  }

  @override
  @mustCallSuper
  Future<void> close() {
    _repository.dispose();
    _transactionSubscription.cancel();
    return super.close();
  }
}
