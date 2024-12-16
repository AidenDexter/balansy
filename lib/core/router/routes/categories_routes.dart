part of '../app_router.dart';

final _categoriesRoutes = [
  GoRoute(
      path: CategoriesRoutes.category.path,
      builder: (_, state) {
        assert(state.extra is ValueNotifier<Category?>);
        return CategoriesScreen(selectedCategory: state.extra! as ValueNotifier<Category?>);
      }),
];
