import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/router/routes_enum.dart';
import '../../bloc/new_transaction.dart';
import '../../domain/entity/my_transaction.dart';
import 'add_transaction_scope.dart';

part 'components/transaction_type_widget.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({super.key});

  @override
  State<AddTransactionPage> createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  late final ValueNotifier<TransactionType> _transactionTypeController;

  @override
  void initState() {
    _transactionTypeController = ValueNotifier(TransactionType.expense);
    super.initState();
  }

  @override
  void dispose() {
    _transactionTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TransactionsBloc, TransactionsState>(listener: (context, state) {
      state.when(
        idle: () {
          // Ничего не делаем в начальном состоянии
        },
        progress: () {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => const Center(child: CircularProgressIndicator()),
          );
        },
        success: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Transaction added successfully!')),
          );
          Navigator.pop(context); // Возвращаемся назад
        },
        error: (error) {
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('An error occurred:'),
                Text(error),
                ElevatedButton(
                  onPressed: () {
                    // Retry logic here
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
      );
    }, builder: (context, state) {
      return state.when(
        idle: () => InitialUI(transactionTypeController: _transactionTypeController),
        progress: () => const Center(child: CircularProgressIndicator()),
        success: () => const Center(child: Text('Transaction added successfully!')),
        error: (error) => Center(
          child: Text('Error: $error'),
        ),
      );
    });
  }
}

class InitialUI extends StatefulWidget {
  const InitialUI({
    required ValueNotifier<TransactionType> transactionTypeController,
    super.key,
  }) : _transactionTypeController = transactionTypeController;

  final ValueNotifier<TransactionType> _transactionTypeController;

  @override
  State<InitialUI> createState() => _InitialUIState();
}

class _InitialUIState extends State<InitialUI> {
  final _formKey = GlobalKey<FormState>();
  final _currencyFormatter = FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));
  final _amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String? _selectedCategory;

    DateTime _selectedDate = DateTime.now();
    final _categories = ['Food', 'Transport', 'Entertainment', 'Other'];
    final _descriptionController = TextEditingController();

    // Форматирование введённого текста как денежной суммы
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add transaction'),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Column(
        children: [
          TransactionTypeWidget(
            transactionTypeController: widget._transactionTypeController,
          ),
          gapH20,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Enter Amount',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                gapH16,
                TextFormField(
                  controller: _amountController,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [_currencyFormatter],
                  decoration: const InputDecoration(
                    labelText: 'Amount',
                    border: OutlineInputBorder(),
                    prefixText: r'$ ',
                  ),
                  validator: validator,
                ),
              ],
            ),
          ),
          gapH16,
          DropdownButtonFormField<String>(
            value: _selectedCategory,
            decoration: const InputDecoration(
              labelText: 'Category',
              border: OutlineInputBorder(),
            ),
            items: _categories
                .map((category) => DropdownMenuItem<String>(
                      value: category,
                      child: Text(category),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategory = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a category';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                border: Border.all(width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(Sizes.p20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Description'.toUpperCase(),
                      ),
                    ),
                    TextField(
                      minLines: 3,
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        labelText: 'Add description',
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.5),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                      ),
                      maxLines: 3,
                    ),
                    gapH16,
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26),
                border: Border.all(width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Category'.toUpperCase(),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => context.push(CategoriesRoutes.category.path),
                      child: const Text('Category'),
                    ),
                    gapH20,
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  'Date: ${DateFormat.yMMMd().format(_selectedDate)}',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null && pickedDate != _selectedDate) {
                    setState(() {
                      _selectedDate = pickedDate;
                    });
                  }
                },
                child: const Text('Select Date'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                final transaction = MyTransaction(
                  amount: double.parse(_amountController.text),
                  description: _descriptionController.text,
                  type: widget._transactionTypeController.value,
                  date: _selectedDate,
                  categoryId: _categories.indexOf(_selectedCategory!) + 1,
                );

                try {
                  AddTransactionScope.add(context, transaction: transaction);
                } catch (e) {
                  debugPrint('Error in onTap: $e');
                }
              }
            },
            child: const Text('Add Transaction'),
          ),
        ],
      ),
    );
  }

  String? validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an amount';
    }
    if (double.tryParse(value) == null) {
      return 'Please enter a valid number';
    }
    return null;
  }
}
