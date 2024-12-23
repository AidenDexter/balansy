import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/router/routes_enum.dart';

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
