part of '../app_router.dart';

final _editTransactionRoutes = [
  GoRoute(
    path: EditTransactionRoutes.add.path,
    builder: (_, state) {
      assert(state.extra is int?);
      return EditTransactionPage(transactionId: state.extra as int?);
    },
  ),
];
