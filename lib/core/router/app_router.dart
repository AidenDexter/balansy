import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../feature/add_transaction/presentation/add_transaction.dart';
import '../../feature/root/presentation/root_page.dart';
import '../../feature/statistic/presentation/statistic_screen.dart';
import '../../feature/transaction_list/presentation/transaction_list.dart';
import 'routes_enum.dart';
import '../../../feature/add_transaction/presentation/categories_screen.dart';

part 'routes/add_transaction_routes.dart';
part 'routes/categories_routes.dart';
part 'routes/statistic_routes.dart';
part 'routes/transactions_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigatorKey');
final _addTransactionRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'AddTransactionRoutesNavigatorKey');
final _statisticRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'StatisticRoutesNavigatorKey');
final _transactionsRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigatorKey');
final _categoryRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigatorKey');

@singleton
class AppRouter {
  AppRouter();
  GoRouter get router => GoRouter(
        navigatorKey: rootNavigatorKey,
        debugLogDiagnostics: kDebugMode,
        initialLocation: AddTransactionRoutes.add.path,
        routes: [
          ...[_commonBottomNavigationBarShellRoute],
          ..._categoriesRoutes
        ],
        errorBuilder: (_, state) => Placeholder(key: state.pageKey),
      );
}

final _commonBottomNavigationBarShellRoute = StatefulShellRoute.indexedStack(
  branches: [
    _transactionsRoutesBranch,
    _statisticRoutesBranch,
    _addTransactionRoutesBranch,
  ],
  builder: (_, state, navigationShell) => RootPage(
    key: state.pageKey,
    navigationShell: navigationShell,
  ),
);

final _addTransactionRoutesBranch = StatefulShellBranch(
  navigatorKey: _addTransactionRoutesNavigatorKey,
  initialLocation: AddTransactionRoutes.add.path,
  routes: [
    ..._addTransactionRoutes,
  ],
);

final _statisticRoutesBranch = StatefulShellBranch(
  navigatorKey: _statisticRoutesNavigatorKey,
  initialLocation: StatisticRoutes.statistic.path,
  routes: [
    ..._statisticRoutes,
  ],
);

final _transactionsRoutesBranch = StatefulShellBranch(
  navigatorKey: _transactionsRoutesNavigatorKey,
  initialLocation: TransactionsRoutes.transactions.path,
  routes: [
    ..._transactionsRoutes,
  ],
);

final _categoryRoutesBranch = StatefulShellBranch(
  navigatorKey: _categoryRoutesNavigatorKey,
  initialLocation: CategoriesRoutes.category.path,
  routes: [
    ..._transactionsRoutes,
  ],
);
