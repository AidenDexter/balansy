import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/i18n/translations/translations.g.dart';
import '../../../../core/router/routes_enum.dart';
import '../../domain/entity/category.dart';
import '../../domain/entity/my_transaction.dart';
import '../categories/categories_scope.dart';
import '../transactions/transactions_scope.dart';
import 'components/date_widget.dart';
import 'edit_transaction_scope.dart';

part 'components/transaction_type_widget.dart';

class EditTransactionPage extends StatefulWidget {
  final int? transactionId;
  const EditTransactionPage({super.key, this.transactionId});

  @override
  State<EditTransactionPage> createState() => _EditTransactionPageState();
}

class _EditTransactionPageState extends State<EditTransactionPage> {
  late final ValueNotifier<TransactionType> _transactionTypeController;
  late final ValueNotifier<DateTime> _selectedDateNotifier;
  late final ValueNotifier<Category?> _selectedCategory;
  late final TextEditingController _titleController;
  late final TextEditingController _amountController;

  @override
  void initState() {
    super.initState();
    // Инициализация контроллеров с дефолтными значениями
    _transactionTypeController = ValueNotifier(TransactionType.income);
    _selectedDateNotifier = ValueNotifier(DateTime.now());
    _selectedCategory = ValueNotifier(null);
    _titleController = TextEditingController();
    _amountController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Загружаем транзакцию только если передан ее ID
    if (widget.transactionId != null) {
      final transaction = TransactionsScope.fetchTransaction(context, widget.transactionId!);
      if (transaction != null) {
        final category = CategoriesScope.fetchCategory(context, transaction.categoryId);

        // Обновляем контроллеры на основе данных транзакции
        _transactionTypeController.value = transaction.type;
        _selectedDateNotifier.value = transaction.date;
        _selectedCategory.value = category;
        _titleController.text = transaction.description;
        _amountController.text = transaction.amount.toString();
      }
    }
  }

  @override
  void dispose() {
    _transactionTypeController.dispose();
    _selectedDateNotifier.dispose();
    _selectedCategory.dispose();
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.transactionId != null ? t.updateTransaction : t.addTransaction),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            children: [
              gapH20,
              TransactionTypeWidget(transactionTypeController: _transactionTypeController),
              gapH20,
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: t.title),
              ),
              TextField(
                controller: _amountController,
                decoration: InputDecoration(labelText: t.amount),
              ),
              DateWidget(selectedDateNotifier: _selectedDateNotifier),
              gapH20,
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        child: ValueListenableBuilder(
                          valueListenable: _selectedCategory,
                          builder: (_, category, __) {
                            return ListTile(
                              title: Text(category?.title ?? t.selectCategory),
                              trailing: const Icon(Icons.arrow_forward),
                            );
                          },
                        ),
                        onTap: () async {
                          final selected = await context.push<Category>(
                            CategoriesRoutes.category.path,
                          );
                          if (selected != null) {
                            _selectedCategory.value = selected;
                          }
                        }),
                  ),
                ],
              ),
              gapH20,
              ElevatedButton(
                onPressed: () async {
                  final id = widget.transactionId;
                  final title = _titleController.text;
                  final amount = double.tryParse(_amountController.text) ?? 0;
                  final type = _transactionTypeController.value;
                  final date = _selectedDateNotifier.value;
                  final categoryId = _selectedCategory.value!.id!;

                  if (title.isNotEmpty && amount > 0 && _selectedCategory.value != null) {
                    final _editedTransaction = MyTransaction(
                      id: id,
                      type: type,
                      date: date,
                      description: title,
                      amount: amount,
                      categoryId: categoryId,
                    );

                    if (widget.transactionId != null) {
                      EditTransactionScope.update(
                        context,
                        _editedTransaction,
                      );
                    } else {
                      EditTransactionScope.add(
                        context,
                        transaction: _editedTransaction,
                      );
                    }
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(t.pleaseFillAllFields)),
                    );
                  }
                },
                child: Text(widget.transactionId != null ? t.save : t.create),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
