import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../core/services/service_locator/service_locator.dart';
import '../bloc/statistic.dart';
import '../domain/repository/i_statistic_repository.dart';
import '../domain/repository/i_transaction_repository.dart';

@immutable
class StatisticScope extends SingleChildStatelessWidget {
  const StatisticScope({
    super.key,
  });

  static void onChange(BuildContext context, Map<DateTime, double> statisticData) =>
      context.read<StatisticBloc>().add(StatisticEvent.onChange(statisticData));

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => BlocProvider<StatisticBloc>(
        create: (context) => StatisticBloc(
          statisticRepository: getIt<IStatisticRepository>(),
          transactionRepository: getIt<ITransactionRepository>(),
        ),
        child: child,
      );
}
