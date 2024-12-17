import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_sizes.dart';

class StatisticScreen extends StatelessWidget {
  final double totalIncome = 5000; // Общий доход
  final double totalExpense = 3200; // Общие расходы

  final Map<String, double> categories = {
    'Food': 1200,
    'Entertainment': 800,
    'Transport': 600,
    'Utilities': 400,
    'Others': 200,
  };

  StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statistics'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Общая статистика
            const Text(
              'Total Statistics',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            gapH16,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatisticCard('Income', totalIncome, Colors.green),
                _buildStatisticCard('Expense', totalExpense, Colors.red),
              ],
            ),
            gapH32,
            // Заголовок для графика
            const Text(
              'Expenses by Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            gapH16,
            // Круговая диаграмма
            Expanded(
              child: PieChart(
                PieChartData(
                  sections: _buildChartSections(categories),
                  centerSpaceRadius: 50,
                  borderData: FlBorderData(show: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Карточка статистики для дохода или расхода
  Widget _buildStatisticCard(String title, double amount, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            gapH8,
            Text(
              '\$${amount.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 18, color: color, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  /// Формирование секций для круговой диаграммы
  List<PieChartSectionData> _buildChartSections(Map<String, double> data) {
    // ignore: omit_local_variable_types
    final double total = data.values.fold(0, (sum, value) => sum + value);

    return data.entries.map((entry) {
      final percentage = (entry.value / total) * 100;
      return PieChartSectionData(
        color: _getColorForCategory(entry.key),
        value: entry.value,
        title: '${percentage.toStringAsFixed(1)}%',
        radius: 60,
        titleStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
      );
    }).toList();
  }

  /// Определение цвета для каждой категории
  Color _getColorForCategory(String category) {
    switch (category) {
      case 'Food':
        return Colors.blue;
      case 'Entertainment':
        return Colors.orange;
      case 'Transport':
        return Colors.purple;
      case 'Utilities':
        return Colors.teal;
      case 'Others':
        return Colors.grey;
      default:
        return Colors.black;
    }
  }
}

void main() => runApp(MaterialApp(home: StatisticScreen()));
