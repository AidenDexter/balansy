part of '../app_router.dart';

final _categoriesRoutes = [
  GoRoute(
      path: CategoriesRoutes.category.path,
      builder: (_, state) {
        return const CategoriesScreen();
      }),
];
