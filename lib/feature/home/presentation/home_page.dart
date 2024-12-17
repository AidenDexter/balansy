// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/resources/assets.gen.dart';
import '../../../core/router/routes_enum.dart';
import '../../transactions/bloc/transactions.dart';
import '../../transactions/domain/entity/my_transaction.dart';
import '../../transactions/presentation/categories/categories_scope.dart';
import '../../transactions/presentation/transactions/transactions_scope.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 64),
        child: AddTransactionButton(),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Welcome'),
      ),
      body: BlocBuilder<TransactionsBloc, TransactionsState>(
        builder: (context, state) {
          return state.when(
              idle: (transactions) => _DataLayer(transactions: transactions),
              progress: (_) => const Center(child: CircularProgressIndicator()),
              success: (transactions) => _DataLayer(transactions: transactions),
              error: (_, state) => _EmptyLayout(state));
        },
      ),
    );
  }
}

class AddTransactionButton extends StatelessWidget {
  const AddTransactionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () => context.push(EditTransactionRoutes.add.path),
    );
  }
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
              'Problem to show:$state',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _DataLayer extends StatelessWidget {
  final List<MyTransaction> transactions;
  const _DataLayer({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available Price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              gapH8,
              Text(
                r'$here will be a sum of all transactions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              gapH16
            ],
          ),
          const Text('Мои транзакции', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          gapH16,
          Expanded(
            child: ListView.separated(
                itemCount: transactions.length,
                itemBuilder: (context, index) {
                  final transaction = transactions[index];
                  final date = DateFormat('dd/MM/yyyy').format(transaction.date);
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name: ${transaction.description}'),
                          Text('\$ ${transaction.amount}'),
                          Text('type: ${transaction.type.title}'),
                          Text('id: ${transaction.id}'),
                          Text(
                            'category: ${CategoriesScope.fetchCategory(context, transaction.categoryId)?.title ?? 'error with loading category'}',
                          ),
                          Text('Dt: $date'),
                        ],
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () async {
                                final wasUpdated =
                                    await context.push(EditTransactionRoutes.add.path, extra: transaction.id);
                                if (wasUpdated == true) {}
                              }),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => TransactionsScope.delete(context, transaction.id!),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (_, __) => gapH12),
          ),
        ],
      ),
    );
  }
}
