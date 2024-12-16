const _addTransactionKey = '/add_transaction_routes/';
const _statisticRoutesKey = '/statistic_routes/';
const _transactionListRoutesKey = '/transaction_list_routes/';
const _commonRoutesKey = '/common_routes/';
const _categoriesRoutesKey = '/category_routes/';

enum EditTransactionRoutes {
  add(path: '${_addTransactionKey}addTransaction');

  final String path;

  const EditTransactionRoutes({
    required this.path,
  });
}

enum StatisticRoutes {
  statistic(path: '${_statisticRoutesKey}statistic');

  final String path;

  const StatisticRoutes({
    required this.path,
  });
}

enum TransactionsRoutes {
  transactions(
    path: '${_transactionListRoutesKey}transactions',
  );

  final String path;

  const TransactionsRoutes({
    required this.path,
  });
}

enum CategoriesRoutes {
  category(path: '${_categoriesRoutesKey}category');

  final String path;

  const CategoriesRoutes({
    required this.path,
  });
}

enum CommonRoutes {
  add(path: '${_commonRoutesKey}add'),
  statistic(path: '${_commonRoutesKey}statistic'),
  transactions(path: '${_commonRoutesKey}transactions');

  final String path;

  const CommonRoutes({
    required this.path,
  });
}
