import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../../core/services/service_locator/service_locator.dart';
import '../../bloc/new_transaction.dart';
import '../../domain/entity/my_transaction.dart';
import '../../domain/repository/i_add_transaction_repository.dart';

@immutable
class AddTransactionScope extends SingleChildStatelessWidget {
  const AddTransactionScope({
    super.key,
  });

  static void add(BuildContext context, {required MyTransaction transaction}) =>
      context.read<TransactionsBloc>().add(TransactionsEvent.add(transaction: transaction));

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => BlocProvider<TransactionsBloc>(
        create: (context) => TransactionsBloc(
          repository: getIt<INewTransactionRepository>(),
        ),
        child: child,
      );
}
