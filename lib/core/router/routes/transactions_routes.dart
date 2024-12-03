part of '../app_router.dart';

final _transactionsRoutes = [
  GoRoute(
    path: TransactionsRoutes.transactions.path,
    builder: (_, state) => const TransactionList(),
  ),
];
