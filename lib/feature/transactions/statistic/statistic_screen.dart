import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../core/i18n/translations/translations.g.dart';
import '../../../core/resources/assets.gen.dart';
import '../../../core/utils/date_formatter.dart';
import '../bloc/statistic.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({super.key});

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
      ),
      body: BlocBuilder<StatisticBloc, StatisticState>(
        builder: (context, state) {
          debugPrint('state $state');
          return state.when(
              idle: (state) => _DataLayer(data: state),
              progress: () => const Center(child: Text('No Data')),
              success: (state) => _DataLayer(data: state),
              error: _EmptyLayout.new);
        },
      ),
    );
  }
}

class _DataLayer extends StatelessWidget {
  final Map<DateTime, double> data;
  const _DataLayer({required this.data});

  @override
  Widget build(BuildContext context) {
    final chartData = data.entries.map((entry) => _TransactionData(entry.key, entry.value)).toList();
    return Container(
      padding: const EdgeInsets.all(16),
      height: 600,
      child: SfCartesianChart(
        primaryXAxis: DateTimeAxis(
          dateFormat: DateFormatters.statistics,
          intervalType: DateTimeIntervalType.days,
          title: const AxisTitle(text: 'Date'),
        ),
        primaryYAxis: const NumericAxis(
          labelFormat: '{value}',
        ),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CartesianSeries<_TransactionData, DateTime>>[
          LineSeries<_TransactionData, DateTime>(
            dataSource: chartData,
            xValueMapper: (transaction, _) => transaction.date,
            yValueMapper: (transaction, _) => transaction.amount,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}

class _TransactionData {
  final DateTime date;
  final double amount;

  _TransactionData(this.date, this.amount);
}

class _EmptyLayout extends StatelessWidget {
  final String state;

  const _EmptyLayout(this.state);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Assets.icons.download.svg(),
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
              t.problemToShowX(state: state),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
