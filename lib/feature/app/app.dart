import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested/nested.dart';

import '../../core/router/app_router.dart';
import '../../core/services/service_locator/service_locator.dart';
import '../transactions/presentation/add_transaction/add_transaction_scope.dart';
import '../transactions/presentation/categories/categories_scope.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Nested(children: const [
      AddTransactionScope(),
      CategoriesScope(),
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
      locale: const Locale('ru'),
      routerConfig: _router,
    );
  }
}
