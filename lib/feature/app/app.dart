import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested/nested.dart';

import '../../core/i18n/translations/translations.g.dart';
import '../../core/router/app_router.dart';
import '../../core/services/service_locator/service_locator.dart';
import '../transactions/presentation/categories/categories_scope.dart';
import '../transactions/presentation/edit_transaction_page/edit_transaction_scope.dart';
import '../transactions/presentation/transactions/transactions_scope.dart';
import '../transactions/statistic/statistic_scope.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Nested(children: const [
      EditTransactionScope(),
      CategoriesScope(),
      TransactionsScope(),
      StatisticScope(),
    ], child: const _MaterialApp());
  }
}

class _MaterialApp extends StatefulWidget {
  const _MaterialApp();

  @override
  _MaterialAppState createState() => _MaterialAppState();
}

class _MaterialAppState extends State<_MaterialApp> {
  final GoRouter _router = getIt<AppRouter>().router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: TranslationProvider.of(context).flutterLocale,
      routerConfig: _router,
    );
  }
}
