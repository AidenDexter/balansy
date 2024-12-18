import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../../feature/home/presentation/home_page.dart';
import '../../feature/root/presentation/root_page.dart';
import '../../feature/statistic/presentation/statistic_screen.dart';
import '../../feature/transactions/presentation/categories/categories_screen.dart';
import '../../feature/transactions/presentation/edit_transaction_page/edit_transaction_page.dart';
import 'routes_enum.dart';

part 'routes/categories_routes.dart';
part 'routes/edit_transaction_routes.dart';
part 'routes/statistic_routes.dart';
part 'routes/transactions_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigatorKey');
final _addTransactionRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'AddTransactionRoutesNavigatorKey');
final _statisticRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'StatisticRoutesNavigatorKey');
final _transactionsRoutesNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigatorKey');

@singleton
class AppRouter {
  AppRouter();
  GoRouter get router => GoRouter(
        navigatorKey: rootNavigatorKey,
        debugLogDiagnostics: kDebugMode,
        initialLocation: TransactionsRoutes.transactions.path,
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
    _editTransactionRoutesBranch,
  ],
  builder: (_, state, navigationShell) => RootPage(
    key: state.pageKey,
    navigationShell: navigationShell,
  ),
);

final _editTransactionRoutesBranch = StatefulShellBranch(
  navigatorKey: _addTransactionRoutesNavigatorKey,
  initialLocation: EditTransactionRoutes.add.path,
  routes: [
    ..._editTransactionRoutes,
    ..._categoriesRoutes,
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
