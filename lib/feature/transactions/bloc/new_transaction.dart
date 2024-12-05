import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entity/my_transaction.dart';
import '../domain/repository/i_add_transaction_repository.dart';

part 'new_transaction.freezed.dart';

@freezed
class TransactionsState with _$TransactionsState {
  const TransactionsState._();

  const factory TransactionsState.idle() = _Idle;
  const factory TransactionsState.progress() = _Progress;
  const factory TransactionsState.success() = _Success;
  const factory TransactionsState.error(String error) = _Error;
}

@freezed
class TransactionsEvent with _$TransactionsEvent {
  const factory TransactionsEvent.add({required MyTransaction transaction}) = _AddNewTransactionEvent;
}

class TransactionsBloc extends Bloc<TransactionsEvent, TransactionsState> {
  final INewTransactionRepository _repository;

  TransactionsBloc({required INewTransactionRepository repository})
      : _repository = repository,
        super(const TransactionsState.idle()) {
    on<TransactionsEvent>(
      (event, emit) => event.map(
        add: (event) => _add(event, emit),
      ),
    );
  }

  Future<void> _add(_AddNewTransactionEvent event, Emitter<TransactionsState> emit) async {
    emit(const TransactionsState.progress());
    try {
      await _repository.createTransaction(event.transaction);
      emit(const TransactionsState.success());
    } on Exception catch (e) {
      emit(TransactionsState.error('Failed to add transaction: $e'));
    } finally {
      emit(const TransactionsState.idle());
    }
  }
}
