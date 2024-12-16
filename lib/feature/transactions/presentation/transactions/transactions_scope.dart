import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../../core/services/service_locator/service_locator.dart';
import '../../bloc/transactions.dart';
import '../../domain/entity/my_transaction.dart';
import '../../domain/repository/i_transaction_repository.dart';

@immutable
class TransactionsScope extends SingleChildStatelessWidget {
  const TransactionsScope({super.key});

  static void onChange(BuildContext context, List<MyTransaction> transactions) =>
      context.read<TransactionsBloc>().add(TransactionsEvent.onChange(transactions: transactions));

  static void delete(BuildContext context, int id) =>
      context.read<TransactionsBloc>().add(TransactionsEvent.delete(id: id));

  static MyTransaction? fetchTransaction(BuildContext context, int id) {
    final transactions = context.watch<TransactionsBloc>().state.transactions;
    return transactions.firstWhereOrNull((e) => e.id == id);
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return BlocProvider<TransactionsBloc>(
      create: (context) => TransactionsBloc(
        repository: getIt<ITransactionRepository>(),
      ),
      child: child,
    );
  }
}
