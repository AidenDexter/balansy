import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/router/routes_enum.dart';
import '../domain/entity/transaction.dart';
import 'components/amount_input_field.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
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
            transactionTypeController: _transactionTypeController,
          ),
          const SizedBox(height: 20),
          const AmountInputField(),
          const SizedBox(height: 20),
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
                        'Description'.toUpperCase(),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
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
                    ),
                    const SizedBox(height: 20),
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
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TransactionTypeWidget extends StatelessWidget {
  final ValueNotifier<TransactionType> transactionTypeController;
  const TransactionTypeWidget({
    required this.transactionTypeController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: transactionTypeController,
        builder: (context, transactionType, _) {
          return Row(
              children: TransactionType.values
                  .map(
                    (type) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          transactionTypeController.value = type;
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          color: transactionType == type ? Colors.amber : Colors.transparent,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                type.name.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList());
        });
  }
}
