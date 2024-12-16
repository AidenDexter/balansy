import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import '../../../../core/services/service_locator/service_locator.dart';
import '../../bloc/categories.dart';
import '../../domain/entity/category.dart';
import '../../domain/repository/i_category_repository.dart';

class CategoriesScope extends SingleChildStatelessWidget {
  const CategoriesScope({super.key});

  static void add(BuildContext context, Category category) =>
      context.read<CategoriesBloc>().add(CategoriesEvent.add(category: category));

  static void delete(BuildContext context, int id) =>
      context.read<CategoriesBloc>().add(CategoriesEvent.delete(id: id));

  static void update(BuildContext context, Category category) =>
      context.read<CategoriesBloc>().add(CategoriesEvent.update(category: category));

  static Category? fetchCategory(BuildContext context, int id) {
    final categories = context.watch<CategoriesBloc>().state.categories;
    return categories.firstWhereOrNull((e) => e.id == id);
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => BlocProvider(
        create: (_) => CategoriesBloc(repository: getIt<ICategoriesRepository>()),
        child: child,
      );
}
