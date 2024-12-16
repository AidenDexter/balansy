import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/entity/my_transaction.dart';
import '../domain/repository/i_transaction_repository.dart';

part 'new_transaction.freezed.dart';

@freezed
class NewTransactionState with _$NewTransactionState {
  const NewTransactionState._();

  const factory NewTransactionState.idle() = _Idle;
  const factory NewTransactionState.progress() = _Progress;
  const factory NewTransactionState.success() = _Success;
  const factory NewTransactionState.error(String error) = _Error;

  const factory NewTransactionState({
    required TransactionType transactionType,
    required bool isLoading,
    required String? errorMessage,
  }) = _NewTransactionState;
}

@freezed
class NewTransactionEvent with _$NewTransactionEvent {
  const factory NewTransactionEvent.add({required MyTransaction transaction}) = _AddTransactionEvent;
  const factory NewTransactionEvent.update({required MyTransaction transaction}) = _UpdateTransactionEvent;
}

class NewTransactionBloc extends Bloc<NewTransactionEvent, NewTransactionState> {
  final ITransactionRepository _repository;

  NewTransactionBloc({required ITransactionRepository repository})
      : _repository = repository,
        super(const NewTransactionState.idle()) {
    on<NewTransactionEvent>(
      (event, emit) => event.map(
        add: (event) => _add(event, emit),
        update: (event) => _update(event, emit),
      ),
    );
  }

  Future<void> _add(_AddTransactionEvent event, Emitter<NewTransactionState> emit) async {
    emit(const NewTransactionState.progress());
    try {
      await _repository.create(event.transaction);
      emit(const NewTransactionState.success());
    } on Exception catch (e) {
      emit(NewTransactionState.error('Failed to add transaction: $e'));
    } finally {
      emit(const NewTransactionState.idle());
    }
  }

  Future<void> _update(_UpdateTransactionEvent event, Emitter<NewTransactionState> emit) async {
    emit(const NewTransactionState.progress());
    try {
      await _repository.update(event.transaction);
      emit(const NewTransactionState.success());
    } on Exception catch (e) {
      emit(NewTransactionState.error('Failed to update transaction: $e'));
    } finally {
      emit(const NewTransactionState.idle());
    }
  }
}
