part of '../app_router.dart';

final _addTransactionRoutes = [
  GoRoute(
    path: AddTransactionRoutes.add.path,
    builder: (_, state) => const AddTransactionPage(),
  ),
];
