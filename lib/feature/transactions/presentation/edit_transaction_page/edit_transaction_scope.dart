import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../../core/services/service_locator/service_locator.dart';
import '../../bloc/new_transaction.dart';
import '../../domain/entity/my_transaction.dart';
import '../../domain/repository/i_transaction_repository.dart';

@immutable
class EditTransactionScope extends SingleChildStatelessWidget {
  const EditTransactionScope({
    super.key,
  });

  static void add(BuildContext context, {required MyTransaction transaction}) =>
      context.read<NewTransactionBloc>().add(NewTransactionEvent.add(transaction: transaction));

  static void update(BuildContext context, MyTransaction transaction) =>
      context.read<NewTransactionBloc>().add(NewTransactionEvent.update(transaction: transaction));

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => BlocProvider<NewTransactionBloc>(
        create: (context) => NewTransactionBloc(
          repository: getIt<ITransactionRepository>(),
        ),
        child: child,
      );
}
